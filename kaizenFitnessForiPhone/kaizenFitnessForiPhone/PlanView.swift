import SwiftUI

struct PlanView: View {
    @EnvironmentObject var exerciseList: ExerciseList
    @State var currentPage: Int = 1
    @State var totalPages: Int = 1

    var body: some View {
        VStack {
            HStack {
                Text("Hello")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                    .padding(.leading, 50)
                    .padding(.bottom, 30)
                Text("Rikuto")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
                    .padding(.bottom, 30)
                    .foregroundColor(Color(red: 1, green: 0.37, blue: 0.23, opacity: 1))

                Spacer()
            }
            TabView(selection: $currentPage) {
                ForEach(exerciseList.exercises, id: \.id) {exercise in
                    CardComponent(menu: exercise.menu, mile: exercise.mile, minute: exercise.minute, point: exercise.point)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .gesture(DragGesture().onEnded({ value in
                if value.translation.width < 0 && currentPage < totalPages {
                    self.currentPage += 1
                    print("now:\(self.currentPage)")
                } else if value.translation.width > 0 && currentPage > 1 {
                    self.currentPage -= 1
                    print("now:\(self.currentPage)")
                }
            }))
            .onAppear {
                self.totalPages = exerciseList.exercises.count
            }

            HStack(spacing: 8) {
                ForEach(1...totalPages, id: \.self) { page in
                    Circle()
                        .fill(page == self.currentPage ? Color.blue : Color.gray.opacity(0.3))
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .bottom)
        }
    }
}

#Preview {
    PlanView()
        .environmentObject(ExerciseList())
}
