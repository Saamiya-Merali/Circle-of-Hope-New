//
//  ContentView.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
               LinearGradient(gradient: Gradient(colors: [.purple, .white]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("0C743053-BB17-4D73-B3DE-9B2AE66E1086")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal)
                            .padding(.bottom, 30)

                    NavigationLink(destination: QuizQuestionOne()) {
                        Text("Interest Quiz")
                            .font(.title)
                            .foregroundColor(Color.gray)
                            .padding(.all)
                            .background(Color.white)
                            .cornerRadius(50)
                            
                    }
                    Image("C6EDC371-D484-4285-8A05-6A6DCB7D69F9")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
        
                    NavigationLink(destination: CharityPage()) {
                        Text("Charity Library")
                            .font(.title)
                            .foregroundColor(Color.gray)
                            .padding(.all)
                            .background(Color.white)
                            .cornerRadius(50)
                    }
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    ContentView()
}
