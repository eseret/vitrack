//
//  SwiftUIView.swift
//  vitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI
import Charts

struct Stats: View {
    var body: some View {
        @State var topWorkout = "default"
        ZStack{
            Color("LtBlue").ignoresSafeArea()
            VStack{
                HStack{
                    Image("head")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(0.8)
                    Text("Username")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("blood"))
                }
                .padding()
                Text("Today's Stats:")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("DBlue"))
                    .padding()
                    
                HStack{
                    Text("Total Exercises: " + String(Int(totalExcersies)))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MBlue"))
                        .multilineTextAlignment(.leading)
                }
                

                HStack{
                    Text("Highest Streak: " + String(hStreak))
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("MBlue"))
                    Image("streak")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading, -15.0)
                        .frame(width: 50, height: 55)
                }
                if totalExcersies > 0{
                     let topWorkout = overuse()
                    if topWorkout != "default"{
                        Text("You should rest your " + topWorkout)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("MBlue"))
                    }
                }
                
            }
        }
    }
}
func overuse() -> String{
    var workout = "default"

    for key in exercises.keys {
        
        if exercises[key]! >= 4{
            if (exercises[key]!/totalExcersies)*100 >= 60{
                    
                    workout = key
                    return workout
                
            }
        }
    }
    
    return workout
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}
