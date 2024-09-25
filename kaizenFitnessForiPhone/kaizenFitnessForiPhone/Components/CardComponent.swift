//
//  CardComponent.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/25/24.
//

import SwiftUI

struct CardComponent: View {
    var menu: String
    var mile: String
    var minute: String
    var point: String


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
            .clipShape(.rect(
                topLeadingRadius: 16,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 16
            ))



            VStack(spacing: 10) {
                Text(self.menu)
                    .bold()
                Image(systemName: "figure.yoga")
                HStack(spacing: 25) {
                    VStack(spacing: 5) {
                        Image(systemName: "mappin.circle")
                        Text(self.mile)
                            .bold()
                        Text("miles")
                    }
                    VStack(spacing: 5) {
                        Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                        Text(self.minute)
                            .bold()
                        Text("minutes")
                    }
                    VStack(spacing: 5) {
                        Image(systemName: "heart.fill")
                        Text(self.point)
                            .bold()
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
    CardComponent(menu: "Relax", mile: "9.32", minute: "14", point: "30")
}
