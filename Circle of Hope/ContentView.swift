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
            Image("Screenshot 2024-06-26 at 2.20.40 PM")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
            Text("")
            VStack {
                NavigationLink(destination: QuizQuestionOne()) {
                    Text("Interest Quiz")
                }
                NavigationLink(destination: CharityPage()) {
                    Text("Charity Library")
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
