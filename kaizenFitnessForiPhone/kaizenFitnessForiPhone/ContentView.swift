//
//  ContentView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/24/24.
//

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

#Preview {
    ContentView()
}
