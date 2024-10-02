import SwiftUI
import MapKit

struct SetDestinationView: View {
    @State var inputText: String = ""
    @State var targetCoordinate = CLLocationCoordinate2D(latitude: 35.681382, longitude: 139.76707)
    @State var cameraPosition: MapCameraPosition = .automatic
    @State var displaySearchKey: String = "東京駅"
    
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                Map(position: $cameraPosition){
                    Marker(displaySearchKey, coordinate: targetCoordinate)
                }
            }
            .padding()
            
            VStack {
                Text("Toyota Motor North America - Headquarters")
                HStack {
                    Image(systemName: "location.fill")
                    Text("9.32")
                        .bold()
                    Text("miles")
                    Image(systemName: "fitness.timer")
                    Text("14")
                        .bold()
                    Text("minutes")
                }
            }
            
            NavigationLink {
                SelectActivityView()
            } label: {
                Text("next")
                    .secondaryButtonStyle()
            }
            .navigationTitle("1.SetDestination")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SetDestinationView()
}
