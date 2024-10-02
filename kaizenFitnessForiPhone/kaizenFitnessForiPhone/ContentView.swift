import SwiftUI

struct ContentView: View {
    @State var isPresentMenu: Bool = false

    var body: some View {
        VStack {
            TabView {
                PlanView()
                    .tabItem {
                        VStack {
                            Image(systemName: "book.pages")
                            Text("Plan")
                        }
                        .foregroundColor(.red)

                    }
                Activities()
                    .tabItem {
                        VStack {
                            Image(systemName: "figure.cooldown")
                            Text("Activities")
                        }
                    }
                PlusButton()
                    .tabItem {
                        VStack {
                            Image(systemName: "plus.circle.fill")
                        }
                    }
                Recommend()
                    .tabItem {
                        VStack {
                            Image(systemName: "star.fill")
                            Text("Recommend")
                        }
                    }
                MyPage()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.crop.circle.fill")
                            Text("My Page")
                        }
                    }
            }
        }
    }
}
//
//struct CustomEnvironmentKey: EnvironmentKey {
//    static let defaultValue: FitnessPlan = FitnessPlan(title: "", type: .relax, duration: .init(min: 0, max: 1), effectiveBodyParts: [.arm], musicTitle: "")
//}
//
//extension EnvironmentValues {
//    var customValue: FitnessPlan {
//        get { self[CustomEnvironmentKey.self] }
//        set { self[CustomEnvironmentKey.self] = FitnessPlan(title: "", type: .relax, duration: .init(min: 0, max: 1), effectiveBodyParts: [.arm], musicTitle: "") }
//    }
//}

#Preview {
    ContentView()
}
