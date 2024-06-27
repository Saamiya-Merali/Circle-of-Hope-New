//
//  QuizQuestionFour.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionFour: View {
        
    var body: some View {
        VStack {
            Text("Which of these quotes would you agree with the most?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("'Where you live should not determine whether you live, or whether you die.'")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)/*@END_MENU_TOKEN@*/
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("'The more helpless a creature, the more entitled it is to the protection by man.'")
                    .foregroundColor(Color.blue)
            }
            .padding(.bottom)
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("'A nation that destroys its soils destroys itself.'")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("'Even if people are very young, they shouldn't be prevented from saying what they think.'")
                    .foregroundColor(Color.blue)
            }
        .padding(.bottom)
        NavigationLink(destination: ContentView()) {
            Text("← Back to home")
                .foregroundColor(Color.blue)
                .padding(.top)
        }
    }
    }
}

#Preview {
    QuizQuestionFour()
}
