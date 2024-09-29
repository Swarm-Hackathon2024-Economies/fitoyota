import SwiftUI

@main
struct kaizenFitnessForiPhoneApp: App {
    @StateObject private var exerciseList = ExerciseList()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(exerciseList)
        }
    }
}
