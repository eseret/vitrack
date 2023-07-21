//
//  SwiftUIView.swift
//  vitrack
//
//  Created by Scholar on 7/19/23.
//

var exercises = ["head":0.0, "shoulders":18.0,"stomach":0.0,"wrist":0.0,
                 "quads":0.0,"calves":0.0,"ankles":0.0,"holistics":0.0, "default":0.0]

import SwiftUI
struct ChartData: Identifiable {
    var id = UUID()
    var color : Color
    var slicePercent : CGFloat = 0.0
    var value : CGFloat
    var title: String
}
extension ChartData {
    static var sample: [ChartData] {
//        [ ChartData(color:(Color("ORed")), value: exercises["shoulders"]!, title: "Shoulders"),
//          ChartData(color:(Color("LtOrange")), value: exercises["wrist"]!, title: "Wrist"),
//          ChartData(color:(Color("BYellow")), value: exercises["quads"]!, title: "Quads"), ChartData(color:(Color("canary")), value: exercises["calves"]!, title: "Calves"),ChartData(color:(Color("LtBYellow")), value: exercises["ankles"]!, title: "Ankles"),ChartData(color:(Color("BRed")), value: exercises["holistics"]!, title: "Holistics")
//        ]
        
        [ ChartData(color:(Color("ORed")), value: 18, title: "Shoulders"),
          ChartData(color:(Color("LtOrange")), value: 2, title: "Wrist"),
          ChartData(color:(Color("BYellow")), value: 2, title: "Quads"), ChartData(color:(Color("canary")), value: 6, title: "Calves"),ChartData(color:(Color("LtBYellow")), value: 3, title: "Ankles"),ChartData(color:(Color("BRed")), value: 3, title: "Holistics")
        ]

    }
}
    
    
    struct Stats: View {
        @State private var chartData = ChartData.sample
        @State private var selectedSlice = -1
        @State var topWorkout = "default"
        
        var body: some View {
            NavigationStack{
                ZStack{
                    Color("LtBlue").ignoresSafeArea()
                    VStack{
                        VStack(alignment: .center) {
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
                            HStack {
                                Text("Today's Stats:")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DBlue"))
                                    .padding()
                            }
                            
                            HStack{
                                Text("Total Exercises: " + String(Int(totalExercises)))
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("MBlue"))
                            }
                            HStack{
                                Text("     Highest Streak: " + String(hStreak) + " 🔥")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("MBlue"))
                                    .padding()
    //                            Image("streak")
    //                                .resizable(resizingMode: .stretch)
    //                                .aspectRatio(contentMode: .fit)
    //                                .padding(.leading, -15.0)
    //                                .frame(width: 50, height: 55)
                            }
                        }
                       
                        VStack {
                            ZStack {
                                ForEach(0..<chartData.count, id:\.self) { index in
                                    Circle()
                                        .trim(from: index == 0 ? 0.0 : chartData[index-1].slicePercent,
                                              to: chartData[index].slicePercent)
                                        .stroke(chartData[index].color,lineWidth: 50)
                                        .onTapGesture {
                                            selectedSlice = selectedSlice == index ? -1 : index
                                        }
                                        .scaleEffect(index == selectedSlice ? 1.1 : 1.0)
                                        .animation(.spring(), value: selectedSlice)
                                }
                                if selectedSlice != -1 {
                                    Text(String(chartData[selectedSlice].title))
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("MBlue"))                                }
                            }
                            .frame(width: 200, height: 250)
                            .padding(.bottom, 20)
                        }
                        .onAppear {
                            setupChartData()
                        }
                        .padding()
                        if totalExercises > 0 {
                            let topWorkout = overuse()
                            if topWorkout != "default"{
                                Text("You should rest your " + topWorkout)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("MBlue"))

                                if topWorkout == "head"{
                                    NavigationLink(destination: Holistic()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "shoulders"{
                                    NavigationLink(destination: shoulderScreen()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "stomach"{
                                    NavigationLink(destination: Holistic()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "wrist"{
                                    NavigationLink(destination: wristScreen()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "quads"{
                                    NavigationLink(destination: quadScreen()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "calves"{
                                    NavigationLink(destination: calfScreen()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                                if topWorkout == "ankles"{
                                    NavigationLink(destination: ankleScreen()) {
                                        Text("Let's Do It!")
                                    }
                                    .font(.title3)
                                    .buttonStyle(.borderedProminent)
                                    .tint(Color("GBlue"))
                                }
                            }
                        }
                    }
                }
            }
        }
        private func setupChartData() {
            let total : CGFloat = chartData.reduce(0.0) { $0 + $1.value }
            
            for i in 0..<chartData.count {
                let percentage = (chartData[i].value / total)
                chartData[i].slicePercent =  (i == 0 ? 0.0 : chartData[i - 1].slicePercent) + percentage
            }
        }
    }
    func overuse() -> String{
        var workout = "default"
        
        for key in exercises.keys {
            
            if exercises[key]! >= 4{
                if (exercises[key]!/totalExercises)*100 >= 60{
                    
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
    

