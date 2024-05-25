//
//  RndCuriosityView.swift
//  Curiosity-app
//
//  Created by Arthur Sauer Germano on 08/05/24.
//

import SwiftUI

struct RndCuriosityView: View {
    @StateObject var leituraCuriosa = CuriosityInfoAPIViewModel()
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(LinearGradient(stops: [
                    Gradient.Stop(color: Color("primary_color"), location: 0.10),
                    Gradient.Stop(color: Color("secondary_color"), location: 0.90),
                ], startPoint: .topLeading, endPoint: .bottom))
                .ignoresSafeArea()
            VStack{
                Text("Just a useless curiosity")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 20, x: 0, y: 0)
                    .padding(.top, 50)
                Spacer()
            }
            VStack{
                ForEach(leituraCuriosa.leituras, id: \.self){ leitura in
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.white)
                            .frame(width: 350, height: 300)
                            .shadow(color: .black, radius: 10, x: 0, y: 6)
                        Text("\(leitura.text)")
                            .fontWeight(.bold)
                            .font(.title3)
                            .padding(50)
                    }
                }
            }.onAppear(){
                leituraCuriosa.fetchRandomFact()
            }
            
        }
    }
}

struct RndCuriosityView_Previews: PreviewProvider {
    static var previews: some View {
        RndCuriosityView()
    }
}
