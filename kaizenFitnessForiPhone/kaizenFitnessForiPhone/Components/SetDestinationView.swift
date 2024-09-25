//
//  SetDestinationView.swift
//  kaizenFitnessForiPhone
//
//  Created by takuya on 9/25/24.
//

import SwiftUI
import MapKit

struct SetDestinationView: View {
    @State var inputText: String = ""
    @State var targetCoordinate = CLLocationCoordinate2D()
    @State var cameraPosition: MapCameraPosition = .automatic
    @State var displaySearchKey: String = "東京駅"
    
    
    var body: some View {
        VStack {
            Text("1.SetDestination")
            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
            Map(position: $cameraPosition){
                Marker(displaySearchKey, coordinate: targetCoordinate)
            }
        }
    }
}

#Preview {
    SetDestinationView()
}
