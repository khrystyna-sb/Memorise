//
//  ContentView.swift
//  Memorize
//
//  Created by Mac on 07.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojisCount = 6
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]){
                    ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fill)
                    }
                }
            }
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.blue)
    }
    
    var remove: some View {
        Button{
            if emojisCount > 1 {
                emojisCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button{
            if emojisCount < emojis.count {
                emojisCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}


struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
