//
//  PlanView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/24/24.
//

import SwiftUI

struct PlanView: View {
    @State var currentPage: Int = 1

    let totalPages = 2

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
                CardComponent(menu: "Relax", mile: "9.32", minute: "14", point: "30")
                CardComponent(menu: "Relax", mile: "9.32", minute: "14", point: "30")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .gesture(DragGesture().onEnded({ value in
                if value.translation.width < 0 && currentPage < totalPages {
                    currentPage += 1
                } else if value.translation.width > 0 && currentPage > 1 {
                    currentPage -= 1
                }
            }))

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
}
