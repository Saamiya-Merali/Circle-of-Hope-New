//
//  QuizQuestionTwo.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionTwo: View {
        
    var body: some View {
        VStack {
            Text("Which of these scenarios sounds the most worrying for you to go through?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Being imprisioned or trapped somewhere")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)/*@END_MENU_TOKEN@*/
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Living in a world where our factories and buildings have overtaken the natural world")
                    .foregroundColor(Color.blue)
            }
            .padding(.bottom)
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("The illness or death of someone you know")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Living in a world where we've forgotten how to express ourselves")
                    .foregroundColor(Color.blue)
            }
        .padding(.bottom)
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
