//
//  CharityPage.swift
//  Circle of Hope
//
//  Created by Isabella Gomez Rodriguez on 6/26/24.
//
import SwiftUI

struct CharityPage: View {
    var body: some View {
        NavigationStack {
            

    NavigationLink(destination: Cancer_Research ())
    .foregroundColor(.green)) {
    Text("Click Me! ")
}
}
    .navigationTitle("Home")
.navigationBarTitleDisplayMode(.inline)
.navigationBarHidden(true)
}
}
}
}

// Define the AnotherView struct to avoid conflicts
struct AnotherView: View {
var body: some View {
Text("This is another view!")
}
}

// Correct the Preview struct
struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
}
}
