//
//  calfScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct calfScreen: View {
    @State var calves = 0.0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                
                ScrollView{
                    LazyVStack {
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "zNyBzx4oT1I?start=21")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Calf Exercises")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Strengthens calves")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This instructional video includes guided exercises to increse mobility in the calves.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    calves += 1.0
                                    exercises["calves"] = calves
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
                                
                                WebView(urlString: "2iP-Z2gR11o?start=75")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Calf Awakening/Strengthening")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Increases mobility")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("These exercises are effective for increasing mobility and strengthening calf muscles.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    calves += 1.0
                                    exercises["calves"] = calves
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

struct calfScreen_Previews: PreviewProvider {
    static var previews: some View {
        calfScreen()
    }
}
