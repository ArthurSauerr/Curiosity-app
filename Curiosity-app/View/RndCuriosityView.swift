//
//  RndCuriosityView.swift
//  Curiosity-app
//
//  Created by Lawson Beltrame on 08/05/24.
//

import SwiftUI

struct RndCuriosityView: View {
    @StateObject var leituraCuriosa = CuriosityInfoAPIViewModel()
    
    var body: some View {
        VStack{
            ForEach(leituraCuriosa.leituras, id: \.self){ leitura in
                Text("\(leitura.text)")
                    .padding()
            }
        }.onAppear(){
            leituraCuriosa.fetchRandomFact()
        }
    }
}

struct RndCuriosityView_Previews: PreviewProvider {
    static var previews: some View {
        RndCuriosityView()
    }
}
