//
//  ConfirmView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/26/24.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        VStack{
            Text("Destination")
                .frame(alignment: .leading)
            VStack {
                Text("Toyota Mortor North America - Headquarters")
                HStack {
                    Image(systemName: "location.fill")
                    Text("9.32")
                        .bold()
                    Text("miles")
                    Image(systemName: "fitness.timer")
                    Text("14")
                        .bold()
                    Text("minutes")
                }
            }
            Text("Activity")
                .frame(alignment: .leading)
            Image("sampleStretch")
                .padding()
            HStack {
                    Text("Title")
                TextField("Title", text: .constant("plan name"))
            }
            
            Text("Add to plan")
                .primaryButtonStyle()
        }
    }
}

#Preview {
    ConfirmView()
}
