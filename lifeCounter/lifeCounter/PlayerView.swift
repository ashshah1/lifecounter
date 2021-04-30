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
    @State var addLives = "5"
    @State var subLives = "5"
    
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
                HStack {
                    Text("-")
                    TextField("5", text:$subLives)
                        .keyboardType(.numberPad)
                }
                
                Button(action: {
                    count = count - Int(subLives)!
                    
                }) {
                    Text("-" + subLives)
                }
                .multilineTextAlignment(.center)
                
                
                Button(action: {
                    count -= 1
                }) {
                    Text("-")
                }
                .multilineTextAlignment(.center)
                
                
                Button(action: {
                    count += 1
                }) {
                    Text("+")
                }
                .multilineTextAlignment(.center)
                
                
                Button(action: {
                    count = count + Int(addLives)!
                    
                }) {
                    Text("+" + addLives)
                }
                .multilineTextAlignment(.center)
                
                HStack {
                    Text("+")
                    TextField("5", text:$addLives)
                        .keyboardType(.numberPad)
                }
            }
        }
        .padding(20)
        .background(Color.init(red: 0.72, green: 0.88, blue: 0.88))
        .cornerRadius(10)
        
    }
}
