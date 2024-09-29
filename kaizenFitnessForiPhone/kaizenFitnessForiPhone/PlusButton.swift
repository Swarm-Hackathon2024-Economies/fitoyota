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
        
        Map(position: $position, selection: $selectedResult) {
            UserAnnotation(anchor: .top) { userLocation in
                EmptyView()
                    .onAppear {
                        location = userLocation.location?.coordinate ?? CLLocationCoordinate2D(latitude: 35.171431408654065, longitude: 136.88397079837605)
                    }
            }
            ForEach(searchResults, id: \.self) { result in
                Marker(item: result)
            }
        }
        .safeAreaInset(edge: .top) {
            HStack {
                TextField("", text: $inputText)
                Button {
                    Task {
                        searchResults = await searchLocations(searchText: inputText)
                    }
                } label: {
                    Image(systemName: "magnifyingglass")
                }
            }
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
            )
            .padding()
            .background(
                .thinMaterial
            )
        }
        .safeAreaInset(edge: .bottom) {
            VStack(alignment: .leading) {
                Text(selectedResult?.name ?? "non name")
                Text(selectedResult?.placemark.title ?? "non title")
                Text(selectedResult?.placemark.subtitle ?? "non subtitle")
                Text(selectedResult?.placemark.coordinate.latitude.description ?? "non latitude")
                Text(selectedResult?.placemark.coordinate.longitude.description ?? "non longitude")
                Text(selectedResult?.timeZone?.description ?? "non timeZone")
                Text(selectedResult?.isCurrentLocation.description ?? "non timeZone")
                Text(selectedResult?.phoneNumber ?? "non phoneNumber")
                Text(selectedResult?.url?.absoluteString ?? "non url")
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .background(
                .thinMaterial
            )
        }
        .onChange(of: searchResults) {
            position = .automatic
        }
        .onMapCameraChange { context in
            visibleRegion = context.region
            visibleRegion?.span = .init(latitudeDelta: 0.0125, longitudeDelta: 0.0125)
        }
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
