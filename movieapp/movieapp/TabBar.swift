//
//  TabBar.swift
//  movieapp
//
//  Created by Fran Jukic on 12/01/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
           ContentView().tabItem {
              Text("Best Series")
           }
           .tag(1)
           MovieView().tabItem {
               Text("Best Movies")
           }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
