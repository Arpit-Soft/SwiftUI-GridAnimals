//
//  ContentView.swift
//  SwiftUI-GridAnimals
//
//  Created by Arpit Dixit on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    let animals = ["🐈","🐆","🦌","🦒","🦏","🐄","🐀","🦩","🦜"]
    @State private var sliderValue: CGFloat = 1
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                Slider(value: $sliderValue, in: 1...6, step: 1)
                Text(String(format: "%.0f", sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(10)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                List(animals.chunks(size: Int(sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { animal in
                        Text(animal)
                            .font(.system(size: CGFloat(300/sliderValue)))
                    }
                }
            })
            .navigationTitle("Animals")
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
