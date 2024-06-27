//
//  QuizQuestionThree.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/27/24.
//

import SwiftUI

struct QuizQuestionThree: View {
        
    var body: some View {
        VStack {
            Text("If you were the president/leader of your country, which of these would you most want to increase the funding of?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Hospitals")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)/*@END_MENU_TOKEN@*/
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Shelters")
                    .foregroundColor(Color.blue)
            }
            .padding(.bottom)
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Green Energy")
                    .foregroundColor(Color.blue)
                    .padding(.bottom)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Schools")
                    .foregroundColor(Color.blue)
            }
        .padding(.bottom)
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
