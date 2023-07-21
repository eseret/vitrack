//
//  ContentView.swift
//  vitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI
import WebKit

struct Holistic: View {
    @State var holistics = 0.0
    var body: some View {
        ZStack{
            Color("LtBlue")
                .ignoresSafeArea()
            ScrollView {
                
                
                VStack{
                    Group{
                        Text("Gut Health")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("MBlue"))
                        
                        Text("holistic")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("streaks"))
                            .lineLimit(-1)
                        
                        
                        Image("Kombucha")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.all)
                            .cornerRadius(100)
                            .shadow(radius: 15)
                        
                        Text("Drink kombucha daily for a healthy boost of probiotics and gut friendly bacteria!")
                            .font(.custom("TT Fors", size: 20))
                            .fontWeight(.medium)
                            .padding(.all)
                            .lineSpacing(8.5)
                            .multilineTextAlignment(.center)
                            .background(Rectangle()
                                .foregroundColor(Color("streaks"))
                                .cornerRadius(20)
                                .shadow(radius: 15)
                            )
                    }
                        
                    .padding(.vertical, 0.0)
                        
                        
                    Button(action: {
                        holistics += 1.0
                        exercises["holistics"] = holistics
                    }) {
                        Text("I completed this exercise!")
                            .foregroundColor(Color("DBlue"))
                            .lineLimit(1)
                            .padding()
                            .background(Rectangle() .foregroundColor(Color("LtBlue")))
                            .cornerRadius(15)
                            .shadow(radius:15)
                    }
                        .padding(.top, 5.0)
                    }
                    
                    .padding(.vertical, 45.0)
                
                WebView(urlString: "https://www.youtube.com/watch?v=43zTDmTQNhE")
                    .frame(width: 280, height: 180)
                    .border(Color.white, width: 1)
                        .cornerRadius(20)
                        .shadow(radius: 15)
                    
                    Text("Use this 13 minute meditation video to relax, clear your head, and make your gut happy!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.all)
                        .lineSpacing(8.5)
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .foregroundColor(Color("streaks"))
                            .cornerRadius(20)
                            .shadow(radius: 15)
                        )
                        .padding(.vertical, -29.0)
                        
                        Button(action: {
                            holistics += 1.0
                            exercises["holistics"] = holistics
                            totalExercises += 1.0
                        }) {
                            Text("I completed this exercise!")
                                .foregroundColor(Color("DBlue"))
                                .lineLimit(1)
                                .padding()
                                .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                .cornerRadius(15)
                                .shadow(radius:15)
                        }
                        .padding(.top, 45.0)
                    Image("Kimchi")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .cornerRadius(100)
                        .shadow(radius: 15)
                    
                    Text("Eat a fermented food today such as kimchi, yogurt, pickles, or miso for a healthy dose of probiotics!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.all)
                        .lineSpacing(8.5)
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .foregroundColor(Color("streaks"))
                            .cornerRadius(20)
                            .shadow(radius: 15)
                        )
                        .padding(.vertical, -29.0)
                        
                        Button(action: {
                            holistics += 1.0
                            exercises["holistics"] = holistics
                            totalExercises += 1.0
                        }) {
                            Text("I completed this exercise!")
                                .foregroundColor(Color("DBlue"))
                                .lineLimit(1)
                                .padding()
                                .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                .cornerRadius(15)
                                .shadow(radius:15)
                        }
                        .padding(.top, 45.0)
                    Image("appleCiderVinegar")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .cornerRadius(100)
                        .shadow(radius: 15)
                        .padding()
                    Text("Add a tablespoon of Apple Cider Vinegar to something you eat today (it’s great in salad dressings and marinades) to help break down what you’re eating!")
                        .font(.title3)
                        .fontWeight(.medium)
                        .padding(.all)
                        .lineSpacing(8.5)
                        .multilineTextAlignment(.center)
                        .background(Rectangle()
                            .foregroundColor(Color("streaks"))
                            .cornerRadius(20)
                            .shadow(radius: 15)
                        )
                        .padding(.vertical, -29.0)
                        
                        Button(action: {
                            holistics += 1.0
                            exercises["holistics"] = holistics
                            totalExercises += 1.0
                        }) {
                            Text("I completed this exercise!")
                                .foregroundColor(Color("DBlue"))
                                .lineLimit(1)
                                .padding()
                                .background(Rectangle() .foregroundColor(Color("LtBlue")))
                                .cornerRadius(15)
                                .shadow(radius:15)
                        }
                        .padding(.top, 45.0)
                        
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

struct Holistic_Previews: PreviewProvider {
    static var previews: some View {
        Holistic()
    }
}
