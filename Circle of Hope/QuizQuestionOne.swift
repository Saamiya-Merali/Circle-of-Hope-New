//
//  QuizQuestionOne.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/26/24.
//

import SwiftUI

struct QuizQuestionOne: View {

@State private var message = "You should consider donating to..."
    
    var body: some View {
        VStack {
            Text("Which of these things do you worry about the most?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Button("Your education") {
                message = "You should consider donating to: Education"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Your home") {
                message = "You should consider donating to: Homeless People and Damage from Conflict"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Your pet") {
                message = "You should consider donating to: Ending Animal Abuse"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Your family") {
                message = "You should consider donating to: Orphans and Cancer Research"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        NavigationLink(destination: QuizQuestionTwo()) {
            Text("Next Question →")
                .foregroundColor(Color.blue)
                .padding(.top)
        }
    }
    }
}

#Preview {
    QuizQuestionOne()
}
