//
//  quadScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct quadScreen: View {
    @State var quads = 0.0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                
                ScrollView{
                    LazyVStack {
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "C5aHk9mrLv8")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Quad Workout")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Strengthening and conditioning")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This instructional video includes guided exercises to build strength in the quads.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    quads += 1.0
                                    exercises["quads"] = quads
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
                                
                                WebView(urlString: "CMBgkP1SsOk?start=75")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Knee Pain Quad Workout")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Relieves pain and stress in knees")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("While targeted for those with pain in their knees, these exercises are effective for anyone interested in increasing mobility in their knees and strengthening their quads.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    quads += 1.0
                                    exercises["quads"] = quads
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
                                
                                WebView(urlString: "2klrAq__O_A?start=21")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Quad Strengthening")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Conditions mobility")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your quads.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    quads += 1.0
                                    exercises["quads"] = quads
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

struct quadScreen_Previews: PreviewProvider {
    static var previews: some View {
        quadScreen()
    }
}
