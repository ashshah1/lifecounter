//
//  PlayerView.swift
//  lifeCounter
//
//  Created by Ashni Shah on 4/25/21.
//

import SwiftUI

struct PlayerView: View {
    @Binding var count: Int;
    var num: Int;
    @State var addLives: Int
    @State var subLives: Int
    
    var body: some View {

        //            .background(Color.init(red: 0.88, green: 0.62, blue: 0.62))
        //            .background(Color.init(red: 0.71, green: 0.81, blue: 0.54))
        //            .background(Color.init(red: 0.72, green: 0.88, blue: 0.88))

        VStack {
            HStack {
                Text("PLAYER " + String(num))
                    .foregroundColor(Color.white)
                    .font(.headline)
                Text(String(count))
            }
            HStack {
                Button(action: {
                    count -= 5
                    
                }) {
                    Text("-5")
                }
                Button(action: {
                    count -= 1
                }) {
                    Text("-")
                }
                Button(action: {
                    count += 1
                }) {
                    Text("+")
                }
                Button(action: {
                    count += 5
                }) {
                    Text("+5")
                }
            }
        }
        .padding(20)
        .background(Color.init(red: 0.72, green: 0.88, blue: 0.88))
        .cornerRadius(10)
    
    }
}
