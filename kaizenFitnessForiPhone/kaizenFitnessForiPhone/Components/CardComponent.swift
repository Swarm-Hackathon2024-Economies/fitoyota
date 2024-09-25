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
            HStack {
                Image(systemName: "pencil")
                    .padding()
                Spacer()
                Image(systemName: "trash")
                    .padding()
            }
            Image(systemName: "person.crop.circle")
            Text("Relaxing way office")
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
                Image(systemName: "paperplane")
                Text("Send to my car")
            }
            Button {
                
            } label: {
                Text("View detail")
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
