import SwiftUI
import MapKit

struct SetDestinationView: View {
    @State var inputText: String = ""
    @State var targetCoordinate = CLLocationCoordinate2D(latitude: 35.681382, longitude: 139.76707)
    @State var cameraPosition: MapCameraPosition = .automatic
    @State var displaySearchKey: String = "東京駅"
    @State private var isPresented: Bool = false

    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    isPresented = true
                }) {
                    Image(systemName: "arrow.uturn.backward")
                }
                .fullScreenCover(isPresented: $isPresented) {
                    ContentView()
                }
                TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
                Map(position: $cameraPosition){
                    Marker(displaySearchKey, coordinate: targetCoordinate)
                }
                .padding(15)
            }

            VStack(alignment: .leading, spacing: 0) {
                Text("Toyota Motor North America - Headquarters")
                    .font(.system(size: 22))
                    .bold()
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
            .frame(width: 353)


            NavigationLink {
                SelectActivityView()
            } label: {
                Text("next")
                    .secondaryButtonStyle()
                    .bold()
            }
            .navigationTitle("1.SetDestination")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SetDestinationView()
}
