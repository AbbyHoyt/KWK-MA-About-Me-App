//
//  ContentView.swift
//  About Me App
//
//  Created by Abby Hoyt on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    // Colors and Gradients
    let yellow = Color(red: 1.0, green: 1.0, blue: 0.78)
    let mint = Color(red: 0.663, green: 0.945, blue: 0.875)
    let green = Color(red: 0.118, green: 0.682, blue: 0.596)
    let blue = Color(red: 0.137, green: 0.243, blue: 0.545)
    let greenGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.663, green: 0.945, blue: 0.875), Color(red: 0.118, green: 0.682, blue: 0.596)]), startPoint: .top, endPoint: .bottom)
    
    // Fun Fact Button
    var funFactList = ["I love hippos!", "My favorite color is green!", "I'm on an all-girls VEX Robotics team!", "I know how to code in HTML, CSS, JavaScript, Python, C# and am learning Swift!", "I love strawberry cake!", "I love the Oort Cloud!", "I have two cats!", "On my dad's side of the family alone there are 3 sets of identical twin girls, and I'm one of them!", "I play flute and piccolo, and I know a bit of piano!"]
    @State private var funFact = "..."
    @State private var buttonText = "Click for a Fun Fact"
    
    var body: some View {
        // Set Background Color to Green Gradient
        ZStack {
            greenGradient
                .ignoresSafeArea()
            
            // Page Contents
            VStack {
                // Title/Header
                HStack {
                    // Star Icon
                    Image(systemName: "star.fill")
                        .foregroundColor(yellow)
                        .font(Font.system(size: 25, weight: .black))
                        .padding(.vertical, 20)
                        .padding(.leading, 55)
                    
                    // Name
                    Text("Abby Hoyt")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(yellow)
                        .multilineTextAlignment(.center)
                    
                    // Star Icon
                    Image(systemName: "star.fill")
                        .foregroundColor(yellow)
                        .font(Font.system(size: 25, weight: .black))
                        .padding(.vertical, 20)
                        .padding(.trailing, 55)
                }
                .background(blue)
                //.border(yellow, width: 5)
                
                // Image
                VStack {
                    Image("gwcClub2023")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                }
                .padding(15)
                .background(yellow)
                .cornerRadius(15)
                   
                // Fun Fact Button
                Button(buttonText) {
                    // Set randomFact Equal to a Random String in the funFactList Array
                    let randomFact = Int.random(in: 0..<funFactList.count)
                    // Change the Value of funFact to Selected randomFact
                    funFact = funFactList[randomFact]
                    // Change Button Text
                    buttonText = "Click for Another Fun Fact"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(blue)
                .foregroundColor(yellow)
                .fontWeight(.bold)
                .cornerRadius(20)
                .padding(10)
                
                // Fun Fact
                Text(funFact)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(blue)
                    .multilineTextAlignment(.center)
                    .padding(15)
                    .background(yellow)
                    .cornerRadius(20)
                                
                Spacer()
                
                // Footer
                HStack {
                    Text("Abby Hoyt")
                        .foregroundColor(yellow)
                        .fontWeight(.bold)
                        .font(.title3)
                        .padding(.vertical, 20)
                        .padding(.leading, 69)
                    Text("|")
                        .foregroundColor(green)
                        .fontWeight(.bold)
                        .font(.title3)
                    Text("KWK 2023")
                        .foregroundColor(yellow)
                        .fontWeight(.bold)
                        .font(.title3)
                        .padding(.vertical, 20)
                        .padding(.trailing, 69)
                }
                .background(blue)
                //.border(yellow, width: 5)
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
