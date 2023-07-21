//
//  wristScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct wristScreen: View {
    @State var wrists = 0.0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                
                ScrollView{
                    LazyVStack {
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "74eHCazxWXI?start=60")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Wrist Stretches")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Pain and tension relief")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This instructional video includes guided exercises to relieve tension and increse mobility in the wrists.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    wrists += 1.0
                                    exercises["wrist"] = wrists
                                    totalExercises += 1.0
                                }) {
                                    Text("I completed this exercise!")
                                        .foregroundColor(Color("DBlue"))
                                        .lineLimit(1)
                                        .padding()
                                        .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                        .cornerRadius(15)
                                        .shadow(radius:15)
                                        .padding()
                                }
                                .padding(.leading, 40)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("MBlue")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                            
                        }
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "QKAiNAhlXac?start=18")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Sprained Wrist Conditioning")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Strengthens injured wrists")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your wrists, particularly after injuries like a sprained wrist.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    wrists += 1.0
                                    exercises["wrist"] = wrists
                                    totalExercises += 1.0
                                }) {
                                    Text("I completed this exercise!")
                                        .foregroundColor(Color("DBlue"))
                                        .lineLimit(1)
                                        .padding()
                                        .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                        .cornerRadius(15)
                                        .shadow(radius:15)
                                        .padding()
                                }
                                .padding(.leading, 40)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("MBlue")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                            
                        }
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "XKWJ3Flfm8A?start=14")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Wrist Strengthening")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Conditions mobility for improved flexibility and strength")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your wrists to improve the dorsiflexion of your wrists.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    wrists += 1.0
                                    exercises["wrist"] = wrists
                                    totalExercises += 1.0
                                }) {
                                    Text("I completed this exercise!")
                                        .foregroundColor(Color("DBlue"))
                                        .lineLimit(1)
                                        .padding()
                                        .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                        .cornerRadius(15)
                                        .shadow(radius:15)
                                        .padding()
                                }
                                .padding(.leading, 40)
                            }
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("MBlue")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                            
                        }
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            NavigationLink (destination: ContentViewStreaks()) {
                                Image("fireOne")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("blood"))
                            }
                            .padding(.top, 30)
                            NavigationLink(destination: Stats()) {
                                Image("user")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("MBlue"))
                            }
                            .padding(.top, 30)
                        }
                    }
                }
            }
        }
    }
}

struct wristScreen_Previews: PreviewProvider {
    static var previews: some View {
        wristScreen()
    }
}
