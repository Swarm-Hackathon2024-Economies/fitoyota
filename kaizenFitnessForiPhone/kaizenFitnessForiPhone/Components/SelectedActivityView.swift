//
//  SelectedActivityView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/26/24.
//

import SwiftUI

struct SelectedActivityView: View {
    var body: some View {
        VStack {
            Image("sampleStretch")
                .padding()
            HStack {
                Image(systemName: "fitness.timer")
                    .padding()
                Text("15~30 sec")
            }
            HStack {
                Image(systemName: "figure.run")
                    .padding()
                Text("Neck, Shoulder")
            }
            HStack {
                Image(systemName: "music.note")
                    .padding()
                Text("Relaxing")
            }
            Text("Taking time to stretch during driving breaks offers several benefits. It helps reduce muscle stiffness, improves circulation, and prevents fatigue, making you feel more alert and comfortable for the rest of the journey.")
                .padding()
            
        NavigationLink {
            ConfirmView()
        } label: {
            Text("next")
                .secondaryButtonStyle()
            }
        }
        .navigationTitle("3.Review and Confirm")
    }
}

#Preview {
    SelectedActivityView()
}
