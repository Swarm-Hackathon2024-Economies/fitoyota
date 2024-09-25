import Foundation
import SwiftUI


extension View {
    func primaryButtonStyle() -> some View {
        return self
            .font(.headline)
            .frame(width: 313, height: 60, alignment: .center)
            .foregroundColor(.white)
            .background(Color(red: 1, green: 0.37, blue: 0.23, opacity: 1))
            .cornerRadius(16)
            .padding(.vertical, 26)
    }
    
    func secondaryButtonStyle() -> some View {
        return self
            .frame(width: 300, height: 60, alignment: .center)
            .foregroundColor(Color(red: 1, green: 0.37, blue: 0.23, opacity: 1))
            .cornerRadius(16)
            .overlay(
              RoundedRectangle(cornerRadius: 16)
                .inset(by: 0.5)
                .stroke(Color(red: 1, green: 0.37, blue: 0.23, opacity: 1), lineWidth: 1)
            )
    }
}
