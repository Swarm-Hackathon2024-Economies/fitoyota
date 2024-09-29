//
//  SelectActivityView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/26/24.
//

import SwiftUI

struct SelectActivityView: View {
    @State var currentPage1: Int = 1
    @State var currentPage2: Int = 1
    @State var currentPage3: Int = 1

    let totalPages1 = 2
    let totalPages2 = 2
    let totalPages3 = 2
    
    var body: some View {
        NavigationLink {
            SelectedActivityView()
        } label: {
            VStack {
                Text("SelectActivityView")
                    .frame(alignment: .leading)
                    .padding()
                TabView(selection: $currentPage1) {
                    Image("sampleStretch")
                        .padding()
                    Image("sampleStretch")
                        .padding()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(DragGesture().onEnded({ value in
                    if value.translation.width < 0 && currentPage1 < totalPages1 {
                        currentPage1 += 1
                    } else if value.translation.width > 0 && currentPage1 > 1 {
                        currentPage1 -= 1
                    }
                }))
               
                    
                Text("Relax")
                    .frame(alignment: .leading)
                    .padding()
                TabView(selection: $currentPage1) {
                    Image("sampleRelax")
                        .padding()
                    Image("sampleRelax")
                        .padding()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(DragGesture().onEnded({ value in
                    if value.translation.width < 0 && currentPage1 < totalPages1 {
                        currentPage1 += 1
                    } else if value.translation.width > 0 && currentPage1 > 1 {
                        currentPage1 -= 1
                    }
                }))
                
                Text("Stress relief")
                    .frame(alignment: .leading)
                    .padding()
                TabView(selection: $currentPage1) {
                    Image("sampleStressrelief")
                        .padding()
                    Image("sampleStressrelief")
                        .padding()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .gesture(DragGesture().onEnded({ value in
                    if value.translation.width < 0 && currentPage1 < totalPages1 {
                        currentPage1 += 1
                    } else if value.translation.width > 0 && currentPage1 > 1 {
                        currentPage1 -= 1
                    }
                }))
            }
        }
        .navigationTitle("2.SelectActivityView")
    }
}

#Preview {
    SelectActivityView()
}
