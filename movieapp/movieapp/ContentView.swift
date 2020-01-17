//
//  ContentView.swift
//  movieapp
//
//  Created by Fran Jukic on 05/01/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var serijes: [serije] = []
    @State var showContent = false
    
    var body: some View {
        VStack {
            Text("Best series")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, -185)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(serijes) { serije in
                        serijeView(serije: serije)
                    }
                }
                .padding(10)
                .padding(.leading, 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(serijes: testData)
        
    }
}

struct serijeView: View {  /// status
     let serije: serije  /// body
    
     var body: some View {
    // status image
        VStack {
            Image(serije.imageName)
             .resizable()  // resizable image
             .frame(width: 250, height: 150) // image frame          // create outer view with border (color, width)
            .border(Color.gray.opacity(0.5), width: 0.5)          // apply cornerRadius to hide visible cut out
            .cornerRadius(10)
            .shadow(radius: 10)
            
            Text(serije.name)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(Color.black)
        }
    }
    
}

struct serije: Identifiable {
    var id = UUID()
    var name: String
    var gan: String
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

// postavljamo informacije o varijabli(jer ćemo ih koristiti više puta)
let testData = [
    serije(name: "The Morning Show", gan: "Drama"),
    serije(name: "For All Mankind", gan: "Drama"),
    serije(name: "Servant", gan: "Horror"),
    serije(name: "SEE", gan: "Sci-fi"),
    serije(name: "Truth Be Told", gan: "Crime"),
    serije(name: "Chernobyl", gan: "Drama"),
    serije(name: "Stranger Things", gan: "Sci-fi")
]
