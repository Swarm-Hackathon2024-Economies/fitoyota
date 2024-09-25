//
//  CardComponent.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/25/24.
//

import SwiftUI

struct CardComponent: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image(systemName: "pencil")
                        .padding()
                    Spacer()
                    Image(systemName: "trash")
                        .padding()
                }
                Image(systemName: "person.crop.circle")
                Text("Relaxing way office")
                Text("TMNA")
                    .padding(.bottom, 10)
            }
            .background(Color(red: 1, green: 0.37, blue: 0.23, opacity: 0.7))
            VStack {
                Text("Relax")
                Image(systemName: "figure.yoga")
                HStack {
                    VStack {
                        Image(systemName: "mappin.circle")
                        Text("9.32")
                        Text("miles")
                    }
                    VStack {
                        Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                        Text("14")
                        Text("minutes")
                    }
                    VStack {
                        Image(systemName: "heart.fill")
                        Text("30")
                        Text("point")
                    }
                }
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "paperplane")
                        Text("Send to my car")
                    }
                    .primaryButtonStyle()
                }
                Button {
                    
                } label: {
                    HStack {
                        Text("View detail")
                    }
                    .secondaryButtonStyle()
                }
                .padding(.bottom, 20)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding()
    }
}

#Preview {
    CardComponent()
}
