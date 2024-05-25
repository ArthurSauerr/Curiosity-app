//
//  ContentView.swift
//  Curiosity-app
//
//  Created by Arthur Sauer Germano on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                RndCuriosityView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Curiosidade")
                    }
                DayCuriosityView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Daily")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
