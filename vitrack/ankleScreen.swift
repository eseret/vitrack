//
//  ankleScreen.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI
import WebKit

struct ankleScreen: View {
    @State var ankles = 0.0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                
                ScrollView{
                    LazyVStack {
                        ZStack {
                            VStack (alignment: .leading, spacing: 20.0) {
                                Divider()
                                
                                WebView(urlString: "87BeiyTFZyU")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Ankle Stretches")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Promotes mobility")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This instructional video includes guided instruction on easy exercises to increase flexibility and mobility in ankles. Targeted for the elderly and those suffering from Arthritis.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    ankles += 1.0
                                    exercises["ankles"] = ankles
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
                                
                                WebView(urlString: "W9lT3gfehC0?start=50")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Sprained Ankle Conditioning")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Strengthens injured ankles")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your ankles, particularly after injuries like a sprained ankle.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    ankles += 1.0
                                    exercises["ankles"] = ankles
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
                                
                                WebView(urlString: "QV-x1tK7U4w?start=88")
                                    .frame(width:330, height: 180)
                                    .border(Color("LtBlue"), width: 1)
                                HStack(spacing: 20.0) {
                                    Text("Ankle Strengthening")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("LtBlue"))
                                    Spacer(minLength: 5)
                                    Text("Conditions mobility for improved squats")
                                        .foregroundColor(Color("LtBlue"))
                                }
                                Text("This video includes easy exercises to strengthen the muscles and mobility of your ankles to improve the dorsiflexion of your ankles.")
                                    .foregroundColor(Color("LtBlue"))
                                Button(action: {
                                    ankles += 1.0
                                    exercises["ankles"] = ankles
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

struct WebView: UIViewRepresentable {
  let urlString: String
  func makeUIView(context: Context) -> WKWebView {
    guard let YoutubeURL = URL(string: "https://www.youtube.com/embed/\(urlString)") else {
      return WKWebView()
    }
    let request = URLRequest(url: YoutubeURL)
    let webView = WKWebView()
    webView.load(request)
    return webView
  }
  func updateUIView(_ uiView: WKWebView, context: Context) {}
}



struct ankleScreen_Previews: PreviewProvider {
    static var previews: some View {
        ankleScreen()
    }
}
