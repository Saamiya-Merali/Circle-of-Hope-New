//
//  CharityPage.swift
//  Circle of Hope
//
//  
import SwiftUI

struct CharityPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 20) {
                    HStack {
                        NavigationLink(destination: ContentView()) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding()
                        }
                        Spacer()
                    }
                    .padding(.top, 50)
                    Spacer()
                    Text("Charity Donations")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    NavigationLink(destination: DonationView(description: "Cancer research is dedicated to finding better ways to understand, diagnose, and treat cancer, offering hope to those affected by this challenging disease. Researchers work tirelessly to uncover how cancer starts and spreads, aiming to develop more effective treatments and early detection methods. They are committed to improving the quality of life for patients and their families, striving to bring new therapies that can save lives. This ongoing effort reflects the shared goal of a world where cancer is no longer a fearsome diagnosis.", cause: "Cancer Research!")) {
                        FancyText("Cancer Research")
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "Homeless people are individuals who lack a fixed, regular, and adequate nighttime residence. This includes those living on the streets, in shelters, or in places not meant for human habitation, such as cars or abandoned buildings. They often face significant challenges, including limited access to healthcare, employment, and social services. The causes of homelessness can vary, including economic hardship, mental health issues, and lack of affordable housing.", cause: "Homeless People")) {
                        FancyText("Homeless People")
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "Orphans are children who have endured the heartbreaking loss of one or both parents. These vulnerable children often face significant emotional, social, and economic challenges. They may live with extended family, in foster care, or in orphanages, each situation bringing its own difficulties. Your donation will ensure that caring individuals strive to provide them with the love, support, and resources they need to heal and thrive.", cause: "Orphans")) {
                        FancyText("Orphans")
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "Financially needy people are individuals or families who struggle to make ends meet and cover essential living expenses like housing, food, and healthcare. They face the daily stress of financial uncertainty, often worrying about how to provide for their loved ones. These individuals may have limited or unstable incomes and lack the resources or support systems to achieve financial stability.", cause: "Financially Needy People")) {
                        FancyText("Financially Needy People")
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Charity Library")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }
        }
    }
}

struct FancyText: View {
    var text: String
    init(_ text: String) {
        self.text = text
    }
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .shadow(color: .black, radius: 2, x: 2, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 2)
            )
    }
}

struct DonationView: View {
    @State private var donationAmount: String = ""
    var description: String
    var cause: String
    var body: some View {
        VStack {
            Text(description)
                .foregroundColor(.black)
                .padding()
                .multilineTextAlignment(.center)
            TextField("Enter donation amount", text: $donationAmount)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.decimalPad)
            NavigationLink(destination: ThankYouView(cause: cause, amount: donationAmount)) {
                Text("Donate")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

struct ThankYouView: View {
    var cause: String
    var amount: String
    var body: some View {
        VStack {
            Text("Thank you for your donation!")
                .font(.largeTitle)
                .padding()
            Text("You have donated \(amount) to \(cause).")
                .foregroundColor(.black)
                .padding()
                .multilineTextAlignment(.center)
            NavigationLink(destination: ContentView()) {
                Text("Back to Home")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

struct CharityPage_Previews: PreviewProvider {
    static var previews: some View {
        CharityPage()
    }
}
