import SwiftUI

struct SelectedActivityView: View {
    @EnvironmentObject var selectedFitnessPlan: SelectedFitnessPlan
//    @State var title: String
    var planData: FitnessPlan

    init(planData: FitnessPlan) {
        self.planData = planData
    }
    
    var body: some View {
        VStack {
            Image("sampleStretch")
                .padding()
            Text(planData.title)
            HStack {
                Image(systemName: "fitness.timer")
                    .padding()
                Text("\(planData.duration.min.description)~\(planData.duration.max.description) sec")
            }
            HStack {
                Image(systemName: "figure.run")
                    .padding()
                Text(planData.effectiveBodyParts.map { $0.rawValue }.joined(separator: ", ")
)
            }
            HStack {
                Image(systemName: "music.note")
                    .padding()
                Text(planData.musicTitle)
            }
            Text("Taking time to stretch during driving breaks offers several benefits. It helps reduce muscle stiffness, improves circulation, and prevents fatigue, making you feel more alert and comfortable for the rest of the journey.")
                .padding()
        NavigationLink {
            ConfirmView()
        } label: {
            Text("next")
                .secondaryButtonStyle()
            }
        }
        .navigationTitle("3.Review and Confirm")
    }
}

#Preview {
    SelectedActivityView(planData: fitnessPlans[0])
}
