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
                    NavigationLink(destination: DonationView(description: "The environment has been greatly affected by human activities. Deforestation, the burning of fossil fuels, and habitat destruction are just a few examples of the effects that we humans have had on Earth. We are hurting our one and only home. But, individuals have stood up to fight the destruction that inevitably follows what factories, corporations, and even regular people do without a second thought. Together, let’s build a beautiful world that future generations will be able to live in and enjoy.", cause: "Enviroment")) {
                        FancyText("Enviroment")
                            .background(Color.purple)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "Education is extremely important in our society; it helps people secure a higher income and develop problem solving skills. Charities for this cause not only help with the cost of schooling (tuition, books, transportation and more), but provide extra support through additional learning opportunities, guidance and accountability. Everyone deserves to have the opportunity to have an education so that they can properly engage with society and their personal interests.", cause: "Education")) {
                        FancyText("Education")
                            .background(Color.yellow)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "The most recent conflict that has caused great distress has been that between Israel and Gaza, as it has severely damaged the latter. Charities for conflict between countries aim to address urgent humanitarian needs and support long term recovery efforts. The funds raised will usually primarily focus on immediate relief, including providing essential medical supplies, food, medical treatment, clean water, and other necessities for families affected by the conflict. Additionally, they will support rebuilding healthcare facilities and mental health support in order to foster healing and resilience in the affected communities.", cause: "Damage from Conflict")) {
                        FancyText("Damage from Conflict")
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "By fighting cruelty, rescuing and securing adoptions for animals in need, and driving significant legislative change that protects their lives and welfare—organizations can ultimately transform how people value and care for animals. The modern challenges facing animals are wide-ranging and complex, but we can combat them by providing vital veterinary care, responding to disasters, pioneering adoption/behavioral rehabilitation programs, conducting critical animal welfare research, training law enforcement and shelter professionals, and advocating for more effective laws.", cause: "Ending Animal Abuse")) {
                        FancyText("Ending Animal Abuse")
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: DonationView(description: "Mobilize. Educate. Advocate. These are the three pillars that most charities who strive for equality for all follow. Marginalized groups such as people of color and the LGBTQIA+ need support in order to breach this gap that has been established in our society. We need to call attention to the most urgent opportunities for change--and make that change a reality. We should be focused on fighting for the liberation of all our people without any exception and without leaving anyone behind.", cause: "Equality for All")) {
                        FancyText("Equality for All")
                            .background(Color.green)
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
