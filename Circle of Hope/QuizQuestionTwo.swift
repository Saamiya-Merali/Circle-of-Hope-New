//
//  QuizQuestionTwo.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionTwo: View {

@State private var message = "You should consider donating to..."
    
    var body: some View {
        VStack {
            Text("Which of these scenarios sounds the most worrying for you to go through?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Button("Living in a world where our factories and buildings have overtaken the natural world") {
                message = "You should consider donating to: Enviroment"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Feeling/being imprisioned or trapped somewhere") {
                message = "You should consider donating to: Financially Needy People and Damage from Conflict"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Living in a world where we've forgotten how to express ourselves") {
                message = "You should consider donating to: Equality for All"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("The illness or death of someone you know") {
                message = "You should consider donating to: Cancer Research and Damage from Conflict"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        NavigationLink(destination: QuizQuestionThree()) {
            Text("Next Question →")
                .foregroundColor(Color.blue)
                .padding(.top)
        }
    }
    }
}

#Preview {
    QuizQuestionTwo()
}
