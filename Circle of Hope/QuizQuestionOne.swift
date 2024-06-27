//
//  QuizQuestionOne.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/26/24.
//

import SwiftUI

struct QuizQuestionOne: View {
        
    var body: some View {
        VStack {
            Text("Which of these things do you worry about the most?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Your education")
                    .foregroundColor(Color.blue)
                    /*@END_MENU_TOKEN@*/
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(50)
                    .border(Color.black)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Your home")
                    .foregroundColor(Color.blue)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(50)
                    .border(Color.black)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Your family")
                    .foregroundColor(Color.blue)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(50)
                    .border(Color.black)
            }
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Your pet")
                    .foregroundColor(Color.blue)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(50)
                    .border(Color.black)
            }
        .padding(.bottom)
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
