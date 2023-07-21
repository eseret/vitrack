//
//  homeScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct homeScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                VStack {
                    Text("vitrack")
                    //            .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MBlue"))
                        .padding(.bottom, 20.0)
                        .font(.custom("LeagueSpartan-Bold", size: 30))
                    Text("Where does it hurt?")
                        .font(.title)
                        .foregroundColor(Color("MBlue"))
                    Text("Click on the body part")
                        .padding(.bottom, 20.0)
                        .foregroundColor(Color("MBlue"))
                    ZStack{
                        Image("body")
                            .renderingMode(.template)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color("MBlue"))
                        VStack {
                            //HEAD
                            NavigationLink(destination: Holistic()) {
                             Image("pin")
                                    .padding(.top, 0)
                             }
                            
                            //SHOULDER
                            NavigationLink(destination: shoulderScreen()) {
                                Image("pin")
                                    .padding(.top, 20)
                                    .padding(.leading, 70)
                            }
                            //STOMACH
                            NavigationLink(destination: Holistic()) {
                             Image("pin")
                                    .padding(.top, 10)
                             }
                            //WRIST
                            NavigationLink(destination: wristScreen()) {
                                Image("pin")
                                    .padding(.bottom, 20)
                                    .padding(.leading, 130)
                            }
                            //QUADS
                            NavigationLink(destination: quadScreen()) {
                                Image("pin 1")
                                    .padding(.bottom, 20)
                                    .padding(.leading, 42.0)
                            }
                            //CALVES
                            NavigationLink(destination: calfScreen()) {
                                Image("pin 2")
                                    .padding(.top, 0)
                                    .padding(.trailing, 45)
                            }
                            //ANKLES
                            NavigationLink(destination: ankleScreen()) {
                                Image("pin 3")
                                    .padding(.leading, 35.0)
                            }
                        }
                    }
                    .padding(.bottom, 20.0)
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

struct homeScreen_Previews: PreviewProvider {
    static var previews: some View {
        homeScreen()
    }
}
