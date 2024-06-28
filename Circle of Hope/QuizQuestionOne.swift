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
        ZStack {
        Image("Background")
            .resizable()
            .frame(width: 400, height: 900)
            .ignoresSafeArea()
            VStack {
                Text("Which of these things do you worry about the most?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .bottom, .trailing])
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
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .lineLimit(nil)
                    .frame(width: 300, height: 70)
                    .background(.white)
                    .cornerRadius(10)
                NavigationLink(destination: QuizQuestionTwo()) {
                    Text("Next Question →")
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding(.top)
                }
            }
        }
    }
}

#Preview {
    QuizQuestionOne()
}
