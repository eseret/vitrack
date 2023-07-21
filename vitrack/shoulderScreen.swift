//
//  shoulderScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI
import WebKit

struct shoulderScreen: View {
    
    //    @Binding var workout = [Double]()
    @State var shoulders = 0.0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                
                ScrollView{
                    LazyVStack {
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "faf_CS4Z0yc?start=38")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Shoulder Stretches")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Pain and tension relief")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This instructional video includes guided exercises to relieve tension and increse mobility in the shoulders.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    shoulders += 1.0
                                    exercises["shoulders"] = shoulders
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
                                
                                WebView(urlString: "wT8gPa-6B-c?start=45")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Stiff/Frozen Shoulder Exercises")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Loosens shoulders")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("While targeted for those with the frozen shoulder/adhesive capsulitis, these exercises are effective for anyone struggling with shoulder aches and stiffness.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    shoulders += 1.0
                                    exercises["shoulders"] = shoulders
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
                                
                                WebView(urlString: "6vfamrwD7ks?start=313")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Shoulder Mobility")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Conditions for improved range of motion")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your shoulders.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    shoulders += 1.0
                                    exercises["shoulders"] = shoulders
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

struct shoulderScreen_Previews: PreviewProvider {
    static var previews: some View {
        shoulderScreen()
    }
}
