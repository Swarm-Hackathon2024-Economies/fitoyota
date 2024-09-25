//
//  PlanView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/24/24.
//

import SwiftUI

struct PlanView: View {
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
            Image("card1")
        }
    }
}

#Preview {
    PlanView()
}
