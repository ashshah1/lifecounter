//
//  ContentView.swift
//  lifeCounter
//
//  Created by Ashni Shah on 4/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var lives: [Int] = [20, 20, 20, 20, 20, 20, 20, 20]
    // @State var history: [String]
    @State var changes: [String] = []
    @State var players: Int = 4;
    @State var playerCount: Int = 3;
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    @State var orientation = UIDevice.current.orientation
    
    let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
        .makeConnectable()
        .autoconnect()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.init(red: 0.96, green: 0.96, blue: 0.96)
                    .ignoresSafeArea()
                ScrollView {
                VStack(spacing: 25) {
                    Button(action: {
                        playerCount += 1
                    }) {
                    Text("Add Player")
                    }
                    .disabled(playerCount == 8 || changes.count > 0)
                    // Group {
                        // if (!orientation.isLandscape) {
                            ForEach(0..<playerCount, id: \.self) { curr in
                                PlayerView(count: self.$lives[curr], num: (curr + 1))
                            }
//                            PlayerView(count: self.$lives[0], num: 1)
//                            PlayerView(count: self.$lives[1], num: 2)
//                            PlayerView(count: self.$lives[2], num: 3)
//                            PlayerView(count: self.$lives[3], num: 4)
                        //} else {
//                            HStack {
//                                VStack {
//                                    PlayerView(count: self.$lives[0], num: 1)
//                                    PlayerView(count: self.$lives[1], num: 2)
//                                }
//                                VStack {
//                                    PlayerView(count: self.$lives[2], num: 3)
//                                    PlayerView(count: self.$lives[3], num: 4)
//                                }
//                            }
                        // }
                        VStack {
                            ForEach(0..<lives.count, id: \.self) { n in
                                if (lives[n] <= 0) {
                                    Text("Player " + String(n + 1) + " LOSES!")
                                }
                            }
                        }
//                        .onReceive(orientationChanged) { _ in
//                            self.orientation = UIDevice.current.orientation
//                        }ScrollView {
                        .onChange(of: lives) { [lives] newCount in
                            for i in 0..<players {
                                if (lives[i] != newCount[i]) {
                                    let update = lives[i] < newCount [i] ? " gained " : " lost "
                                    changes.append("Player " + String(i + 1) + update + String(abs(newCount[i] - lives[i])) + " lives")
                                }
                            }
                        }
                    // }
                    NavigationLink(destination:
                        HistoryView(list: changes)) {
                        Text("History")
                    }
                }
            }
            }
        }
    }
}

struct HistoryView: View {
    var list: [String]
    
    var body: some View {
        ScrollView {
            ForEach(list, id:\.self) { change in
                Text(change)
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
