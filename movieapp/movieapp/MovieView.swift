//
//  MovieView.swift
//  movieapp
//
//  Created by Fran Jukic on 12/01/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    
    
    var movies: [movie] = []
    @State var showContent = false
    
    var body: some View {
        VStack {
            Text("Best series")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, -185)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(movies) { movie in
                        movieView(movie: movie)
                    }
                }
                .padding(10)
                .padding(.leading, 10)
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movies: movieData)
        
    }
}

struct movieView: View {  /// status
     let movie: movie  /// body
    
     var body: some View {
    // status image
        VStack {
            Image(movie.imageName)
             .resizable()  // resizable image
             .frame(width: 250, height: 150) // image frame          // create outer view with border (color, width)
            .border(Color.gray.opacity(0.5), width: 0.5)          // apply cornerRadius to hide visible cut out
            .cornerRadius(10)
            .shadow(radius: 10)
            
            Text(movie.name)
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(Color.black)
        }
    }
    
}

struct movie: Identifiable {
    var id = UUID()
    var name: String
    var gan: String
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

// postavljamo informacije o varijabli(jer ćemo ih koristiti više puta)
let movieData = [
    movie(name: "The Morning Show", gan: "Drama"),
    movie(name: "For All Mankind", gan: "Drama"),
    movie(name: "Servant", gan: "Horror"),
    movie(name: "SEE", gan: "Sci-fi"),
    movie(name: "Truth Be Told", gan: "Crime"),
    movie(name: "Chernobyl", gan: "Drama"),
    movie(name: "Stranger Things", gan: "Sci-fi")
]
