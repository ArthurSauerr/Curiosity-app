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
        ZStack{
            Rectangle()
                .foregroundStyle(.black)
                .ignoresSafeArea()
            VStack{
                
            }
        }.onAppear(){
            leituraCuriosa.fetchAllLeituras()
        }
    }
}

struct RndCuriosityView_Previews: PreviewProvider {
    static var previews: some View {
        RndCuriosityView()
    }
}
