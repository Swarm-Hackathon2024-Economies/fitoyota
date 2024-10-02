import SwiftUI

@main
struct kaizenFitnessForiPhoneApp: App {
    @StateObject private var exerciseList = ExerciseList()
    @StateObject private var selectedFitnessPlan = SelectedFitnessPlan()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(exerciseList)
                .environmentObject(selectedFitnessPlan)
        }
    }
}
