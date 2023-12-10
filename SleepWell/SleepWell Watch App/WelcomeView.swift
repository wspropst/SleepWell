//
//  WelcomeView.swift
//  SleepWell Watch App
//
//  Created by Liam Propst on 12/9/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {

                    Image("SleepWellLogo") // Replace with image name we generate
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120) // Increased size
                        .padding(.bottom, 10)

                    NavigationLink(destination: ContentView()) {
                        Text("Go to Dashboard")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 150, height: 40)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
        }
        
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

