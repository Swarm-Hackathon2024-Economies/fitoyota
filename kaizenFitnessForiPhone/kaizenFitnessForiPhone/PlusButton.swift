import SwiftUI
import MapKit

struct PlusButton: View {
    @State private var inputText = ""
    @State private var searchResults: [MKMapItem] = []
    @State private var location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 35.171431408654065, longitude: 136.88397079837605)
    @State private var position: MapCameraPosition = .userLocation(followsHeading: false, fallback: .automatic)
    @State private var visibleRegion: MKCoordinateRegion?
    @State private var selectedResult: MKMapItem?
    var body: some View {
        VStack {
            SetDestinationView()
                .toolbar(.hidden, for: .tabBar)
        }
    }
    private func searchLocations(searchText: String) async -> [MKMapItem] {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.resultTypes = .pointOfInterest
        request.region = visibleRegion ?? MKCoordinateRegion(
            center: location,
            span: MKCoordinateSpan(latitudeDelta: 0.0125,
                                   longitudeDelta: 0.0125))
        do {
            let search = MKLocalSearch(request: request)
            let response = try await search.start().mapItems
            return response
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}

#Preview {
    PlusButton()
}
