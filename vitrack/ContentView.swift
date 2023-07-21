//
//  ContentView.swift
//  fakeVitrack
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color("LtBlue").ignoresSafeArea()
                    VStack {
                        Text("Welcome to vitrack!")
                            .fontWeight(.semibold)
                            .font(.custom("LeagueSpartan-Bold", size: 30))
                            .foregroundColor(Color("MBlue"))
                            .padding()
                        Image("logo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.small)
                            .foregroundColor(Color("MBlue"))
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            NavigationLink (destination: homeScreen()) {
                                Text("Let's begin!")
                                    .font(.title2)
                                    .foregroundColor(Color("LtBlue"))
                            }
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("MBlue"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
