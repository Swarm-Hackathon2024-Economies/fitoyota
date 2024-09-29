import Foundation

struct Exercise: Identifiable {
    var id: Int
    var menu: String
    var mile: String
    var minute: String
    var point: String
}

class ExerciseList: ObservableObject {
    @Published var exercises: [Exercise] = [
        Exercise(id: 1, menu: "Relax", mile: "9.32", minute: "14", point: "30"),
        Exercise(id: 2, menu: "Yoga", mile: "11.23", minute: "30", point: "50"),
        Exercise(id: 3, menu: "aaaaaaaa", mile: "5.32", minute: "14", point: "30"),
        Exercise(id: 4, menu: "bbbbbbbbbbbbbb", mile: "22.32", minute: "143", point: "310"),
        Exercise(id: 5, menu: "ff", mile: "444.32", minute: "1", point: "3330"),
    ]
}
