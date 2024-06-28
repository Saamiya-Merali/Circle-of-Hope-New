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
        ZStack {
            Image("Background")
                .resizable()
                .frame(width: 400, height: 900)
                .ignoresSafeArea()
            
            VStack {
                Text("If you were the president/leader of your country, which of these would you most want to increase the funding of?")
                    .font(.title)
                    .fontWeight(.bold)
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
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .lineLimit(nil)
                    .frame(width: 300, height: 70)
                    .background(.white)
                    .cornerRadius(10)


                    
                NavigationLink(destination: QuizQuestionFour()) {
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
    QuizQuestionThree()
}
