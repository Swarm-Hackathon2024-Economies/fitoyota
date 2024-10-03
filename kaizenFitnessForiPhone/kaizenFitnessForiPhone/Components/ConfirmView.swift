import SwiftUI

struct ConfirmView: View {
    @EnvironmentObject var selectedFitnessPlan: SelectedFitnessPlan
    @State private var isPresented: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Destination")
                .font(.system(size: 22))
                .bold()
            VStack {
                Text("Toyota Mortor North America - Headquarters")
                    .font(.system(size: 22))
                    .bold()
                HStack {
                    Image(systemName: "location.fill")
                    Text("9.32")
                        .font(.system(size: 24))
                        .bold()
                    Text("miles")
                        .font(.system(size: 17))
                    Image(systemName: "fitness.timer")
                    Text("14")
                        .font(.system(size: 24))
                        .bold()
                    Text("minutes")
                        .font(.system(size: 17))
                }
            }

            Text("Activity")
                .font(.system(size: 22))
                .bold()
            ZStack(alignment: .bottomLeading) {
                Image("sampleStretch")
                Text(selectedFitnessPlan.data?.title ?? "")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .bold()
            }
            .frame(maxWidth: .infinity)

            TextField("Title", text: .constant("plan name"))
            Button(action: {
                isPresented = true
            }) {
                Text("Add to plan")
            }
            .fullScreenCover(isPresented: $isPresented) {
                ContentView()
            }
            .primaryButtonStyle()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)

    }
}
#Preview {

    ConfirmView()
}
