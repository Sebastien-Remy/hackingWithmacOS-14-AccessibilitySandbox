//
//  ContentView.swift
//  AccessibilitySandbox
//
//  Created by Sebastien REMY on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
//   let pictures = [
//        "ales-krivec-15949",
//        "galina-n-189483",
//        "kevin-horstmann-141705",
//        "nicolas-tissot-335096"
//    ]
//    
//    let labels = [
//        "Tulips",
//        "Frozen tree buds",
//        "Sunflowers",
//        "Fireworks"
//    ]
//    
//    @State private var selectedPicture = Int.random(in: 0...3)
    
    @State private var value = 10
    
    var body: some View {
        VStack {
//            Image(pictures[selectedPicture])
//                .resizable()
//                .scaledToFit()
//                .accessibilityLabel(labels[selectedPicture])
//                .accessibilityAddTraits(.isButton)
//                .accessibilityRemoveTraits(.isImage)
//                .onTapGesture {
//                    selectedPicture = Int.random(in: 0...3)
//                }
//
//            Image(decorative: "character") // not read by voice over
//                .resizable()
//                .scaledToFit()
//
//            VStack {
//                Text("Your score is")
//                Text("1000")
//                    .font(.title)
//            }
//            .accessibilityElement(children: .combine)
            
                Text("Value: \(value)")
                
                Button("Increment") {
                    value += 1
                }
                
                Button("Decrement") {
                    value -= 1
                }
            }
            .padding()
            .accessibilityElement()
            .accessibilityLabel("Value")
            .accessibilityValue(String(value))
            .accessibilityAdjustableAction { direction in
                switch direction {
                case .increment:
                    value += 1
                case .decrement:
                    value -= 1
                default:
                    print("Not handled.")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
