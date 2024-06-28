//
//  QuizQuestionFour.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionFour: View {

@State private var message = "You should consider donating to..."
    
    var body: some View {
        VStack {
            Text("Which of these quotes do you agree with the most?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Button("'Where you live should not determine whether you live, or whether you die.'") {
                message = "You should consider donating to: Damage from Conflict"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("'The more helpless a creature, the more entitled it is to the protection by man.'") {
                message = "You should consider donating to: Homeless People, Ending Animal Abuse, and Finacially Needy People"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("'A nation that destroys its soils destroys itself.'") {
                message = "You should consider donating to: Enviroment"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("'Even if people are very young, they shouldn't be prevented from saying what they think.'") {
                message = "You should consider donating to: Equality for All"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        NavigationLink(destination: ContentView()) {
            Text("← Back to Home")
                .foregroundColor(Color.blue)
                .padding(.top)
        }
    }
    }
}

#Preview {
    QuizQuestionFour()
}
