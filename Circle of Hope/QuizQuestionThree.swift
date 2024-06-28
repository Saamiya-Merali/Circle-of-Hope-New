//
//  QuizQuestionThree.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionThree: View {

@State private var message = "You should consider donating to..."
    
    var body: some View {
        VStack {
            Text("If you were the president/leader of your country, which of these would you most want to increase the funding of?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            Button("Hospitals") {
                message = "You should consider donating to: Cancer Research and Damage from Conflict"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Shelters") {
                message = "You should consider donating to: Homeless People and Ending Animal Abuse"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Green Energy") {
                message = "You should consider donating to: Enviroment"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            Button("Schools") {
                message = "You should consider donating to: Education"
            }
            .padding(.all)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Text(message)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        NavigationLink(destination: QuizQuestionFour()) {
            Text("Next Question →")
                .foregroundColor(Color.blue)
                .padding(.top)
        }
    }
    }
}

#Preview {
    QuizQuestionThree()
}
