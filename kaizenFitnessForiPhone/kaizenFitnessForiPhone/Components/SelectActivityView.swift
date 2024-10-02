import SwiftUI

struct SelectActivityView: View {
    @EnvironmentObject var selectedFitnessPlan: SelectedFitnessPlan
    @State var currentPage: Int = 1
    @State private var isActive = false

    let totalPages: Int = 2

    var body: some View {
        ScrollView {
            VStack {
                ForEach(fitnessPlans) { plan in
                    NavigationLink(destination: SelectedActivityView(planData: plan), isActive: $isActive) {
                        Button(plan.title) {
                            selectedFitnessPlan.data = plan
                            self.isActive = true
                        }
                        .frame(alignment: .leading)
                        .padding()
                    }
                    TabView(selection: $currentPage) {
                        Image("sample\(plan.type.rawValue)")
                            .padding()
                        Image("sample\(plan.type.rawValue)")
                            .padding()
                    }
                    .frame(minHeight: 100)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .gesture(DragGesture().onEnded({ value in
                        if value.translation.width < 0 && currentPage < totalPages {
                            currentPage += 1
                        } else if value.translation.width > 0 && currentPage > 1 {
                            currentPage -= 1
                        }
                    }))
                }
            }
        }
        .navigationTitle("2.SelectActivityView")
    }
}

#Preview {
    SelectActivityView()
}
