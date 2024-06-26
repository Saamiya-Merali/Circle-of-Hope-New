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
            
            
            Text("Circle of Hope")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
            VStack {
                NavigationLink(destination: QuizQuestionOne()) {
                    Text("Interest")
                }
                NavigationLink(destination: CharityPage()) {
                    Text("Cancer Research")
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
