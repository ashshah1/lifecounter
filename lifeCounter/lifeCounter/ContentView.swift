//
//  ContentView.swift
//  lifeCounter
//
//  Created by Ashni Shah on 4/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var count1: Int = 20
    @State var count2: Int = 20
    @State var count3: Int = 20
    @State var count4: Int = 20
    
    @Environment(\.horizontalSizeClass) var sizeClass

    @State var orientation = UIDevice.current.orientation
    
    let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .makeConnectable()
            .autoconnect()

    var body: some View {
        ZStack {
        Color.init(red: 0.96, green: 0.96, blue: 0.96)
        .ignoresSafeArea()
            VStack(spacing: 25) {
            Group {
                if (!orientation.isLandscape) {
        
            VStack {
                HStack {
                    Text("PLAYER 1")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text(String(count1))
                }
                HStack {
                    Button(action: {
                        self.count1 -= 5
                        if (self.count1 < 0) {
                            
                        }
                        
                    }) {
                        Text("-5")
                    }
                    Button(action: {
                        self.count1 -= 1
                    }) {
                        Text("-")
                    }
                    Button(action: {
                        self.count1 += 1
                    }) {
                        Text("+")
                    }
                    Button(action: {
                        self.count1 += 5
                    }) {
                        Text("+5")
                    }
                }
            }
            .padding(20)
            .background(Color.init(red: 0.88, green: 0.62, blue: 0.62))
            .cornerRadius(10)
            VStack {
                HStack {
                    Text("PLAYER 2")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text(String(count2))
                }
                HStack {
                    Button(action: {
                        self.count2 -= 5
                    }) {
                        Text("-5")
                    }
                    Button(action: {
                        self.count2 -= 1
                    }) {
                        Text("-")
                    }
                    Button(action: {
                        self.count2 += 5
                    }) {
                        Text("+")
                    }
                    Button(action: {
                        self.count2 += 5
                    }) {
                        Text("+5")
                    }
                }
            }
            .padding(20)
            .background(Color.init(red: 0.71, green: 0.81, blue: 0.54))
            .cornerRadius(10)
            
            VStack {
                HStack {
                    Text("PLAYER 3")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text(String(count3))
                }
                HStack {
                    Button(action: {
                        self.count3 -= 5
                    }) {
                        Text("-5")
                    }
                    Button(action: {
                        self.count3 -= 1
                    }) {
                        Text("-")
                    }
                    Button(action: {
                        self.count3 += 1
                    }) {
                        Text("+")
                    }
                    Button(action: {
                        self.count3 += 5
                    }) {
                        Text("+5")
                    }
                }
            }
            .padding(20)
            .background(Color.init(red: 0.89, green: 0.85, blue: 0.53))
            .cornerRadius(10)
            VStack {
                HStack {
                    Text("PlAYER 4")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text(String(count4))
                }
                HStack {
                    Button(action: {
                        self.count4 -= 5
                    }) {
                        Text("-5")
                    }
                    Button(action: {
                        self.count4 -= 1
                    }) {
                        Text("-")
                    }
                    Button(action: {
                        self.count4 += 1
                    }) {
                        Text("+")
                    }
                    Button(action: {
                        self.count4 += 5
                    }) {
                        Text("+5")
                    }
                }
            }
            .padding(20)
            .background(Color.init(red: 0.72, green: 0.88, blue: 0.88))
            .cornerRadius(10)
        
            } else {
                HStack {
                    VStack {
                        VStack {
                            HStack {
                                Text("Player 1")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                Text(String(count1))
                            }
                            HStack {
                                Button(action: {
                                    self.count1 -= 5
                                    if (self.count1 < 0) {
                                        
                                    }
                                    
                                }) {
                                    Text("-5")
                                }
                                Button(action: {
                                    self.count1 -= 1
                                }) {
                                    Text("-")
                                }
                                Button(action: {
                                    self.count1 += 1
                                }) {
                                    Text("+")
                                }
                                Button(action: {
                                    self.count1 += 5
                                }) {
                                    Text("+5")
                                }
                            }
                        }
                        .padding(30)
                        .background(Color.init(red: 0.88, green: 0.62, blue: 0.62))
                        .cornerRadius(10)
                        VStack {
                            HStack {
                                Text("Player 2")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                Text(String(count2))
                            }
                            HStack {
                                Button(action: {
                                    self.count2 -= 5
                                }) {
                                    Text("-5")
                                }
                                Button(action: {
                                    self.count2 -= 1
                                }) {
                                    Text("-")
                                }
                                Button(action: {
                                    self.count2 += 5
                                }) {
                                    Text("+")
                                }
                                Button(action: {
                                    self.count2 += 5
                                }) {
                                    Text("+5")
                                }
                            }
                        }
                        .padding(30)
                        .background(Color.init(red: 0.71, green: 0.81, blue: 0.54))
                        .cornerRadius(10)
                    }
                    VStack {
                        VStack {
                            HStack {
                                Text("Player 3")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                Text(String(count3))
                            }
                            HStack {
                                Button(action: {
                                    self.count3 -= 5
                                }) {
                                    Text("-5")
                                }
                                Button(action: {
                                    self.count3 -= 1
                                }) {
                                    Text("-")
                                }
                                Button(action: {
                                    self.count3 += 1
                                }) {
                                    Text("+")
                                }
                                Button(action: {
                                    self.count3 += 5
                                }) {
                                    Text("+5")
                                }
                            }
                        }
                        .padding(30)
                        .background(Color.init(red: 0.89, green: 0.85, blue: 0.53))
                        .cornerRadius(10)
                        VStack {
                            HStack {
                                Text("Player 4")
                                    .foregroundColor(Color.white)
                                    .font(.headline)
                                Text(String(count4))
                            }
                            HStack {
                                Button(action: {
                                    self.count4 -= 5
                                }) {
                                    Text("-5")
                                }
                                Button(action: {
                                    self.count4 -= 1
                                }) {
                                    Text("-")
                                }
                                Button(action: {
                                    self.count4 += 1
                                }) {
                                    Text("+")
                                }
                                Button(action: {
                                    self.count4 += 5
                                }) {
                                    Text("+5")
                                }
                            }
                        }
                        .padding(30)
                        .background(Color.init(red: 0.72, green: 0.88, blue: 0.88))
                        .cornerRadius(10)
                    }
                }
            }
            VStack {
                let allLives: [Int] = [self.count1, self.count2, self.count3, self.count4]
                ForEach(0..<allLives.count) { n in
                    if (allLives[n] <= 0) {
                        Text("Player " + String(n + 1) + " LOSES!")
                    }
                }
            }
            .onReceive(orientationChanged) { _ in
                        self.orientation = UIDevice.current.orientation
                    }
        }
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
