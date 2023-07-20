//
//  SwiftUIView.swift
//  vitrack
//
//  Created by Scholar on 7/19/23.
//

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
        [ ChartData(color:(Color("BRed")), value: exercises["head"]!, title: "Head"),ChartData(color:(Color("ORed")), value: exercises["shoulders"]!, title: "Sholders"),ChartData(color:(Color("ROrange")), value: exercises["stomach"]!, title: "Stomach"),
          ChartData(color:(Color("LtOrange")), value: exercises["wrist"]!, title: "Wrist"),
          ChartData(color:(Color("BYellow")), value: exercises["quads"]!, title: "Quads"), ChartData(color:(Color("canary")), value: exercises["calves"]!, title: "Calves"),ChartData(color:(Color("LtBYellow")), value: exercises["ankles"]!, title: "Ankles")
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
                                Text("Total Exercises: " + String(Int(totalExcersies)))
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
                        if totalExcersies > 0{
                            let topWorkout = overuse()
                            if topWorkout != "default"{
                                Text("You should rest your " + topWorkout)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("MBlue"))
                                NavigationLink(destination: test()) {
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
    

