import Foundation

struct FitnessPlan: Identifiable {
    var id: UUID = UUID()
    var title: String
    var type: FitnessType
    var duration: DurationRange
    var effectiveBodyParts: [BodyPart]
    var musicTitle: String
    var destinationName: String = ""
    var destinationLatitude: Float = 0
    var destinationLongitude: Float = 0

    enum FitnessType: String {
        case stretch = "Stretch"
        case relax = "Relax"
    }

    struct DurationRange {
        let min: Int
        let max: Int
    }

    enum BodyPart: String {
        case neck = "Neck"
        case shoulder = "Shoulder"
        case arm = "Arm"
        case face = "Face"
    }
}

let fitnessPlans: [FitnessPlan] = [
    .init(
        title: "Shoulder Shrug and Roll",
        type: .stretch,
        duration: .init(min: 15, max: 30),
        effectiveBodyParts: [.neck, .shoulder],
        musicTitle: "Workout"
    ),
    .init(
        title: "Seated Twist Stretch",
        type: .stretch,
        duration: .init(min: 20, max: 35),
        effectiveBodyParts: [.arm, .shoulder],
        musicTitle: "Relaxing"
    ),
    .init(
        title: "Steering Wheel Push",
        type: .relax,
        duration: .init(min: 10, max: 15),
        effectiveBodyParts: [.arm, .shoulder],
        musicTitle: "Chil"
    ),
    .init(
        title: "Seated Neck Roll",
        type: .relax,
        duration: .init(min: 30, max: 40),
        effectiveBodyParts: [.neck, .face],
        musicTitle: "Friday"
    ),
    .init(
        title: "Shoulder Shrug and Roll",
        type: .stretch,
        duration: .init(min: 15, max: 30),
        effectiveBodyParts: [.neck, .shoulder],
        musicTitle: "Workout"
    ),
    .init(
        title: "Seated Twist Stretch",
        type: .stretch,
        duration: .init(min: 20, max: 35),
        effectiveBodyParts: [.arm, .shoulder],
        musicTitle: "Relaxing"
    ),
    .init(
        title: "Steering Wheel Push",
        type: .relax,
        duration: .init(min: 10, max: 15),
        effectiveBodyParts: [.arm, .shoulder],
        musicTitle: "Chil"
    ),
    .init(
        title: "Seated Neck Roll",
        type: .relax,
        duration: .init(min: 30, max: 40),
        effectiveBodyParts: [.neck, .face],
        musicTitle: "Friday"
    ),
]

class SelectedFitnessPlan: ObservableObject {
    @Published var data: FitnessPlan?
}
