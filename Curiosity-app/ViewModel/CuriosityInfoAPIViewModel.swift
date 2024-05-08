//
//  CuriosityInfoAPIViewModel.swift
//  Curiosity-app
//
//  Created by Arthur Sauer Germano on 08/05/24.
//

import Foundation


class CuriosityInfoAPIViewModel : ObservableObject {
    @Published var leituras : [LeituraCuriosity] = []
    
    func fetchAllLeituras(){
        guard let url = URL(string:
                                "https://uselessfacts.jsph.pl/api/v2/facts/random"
        ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([LeituraCuriosity].self, from: data)
                DispatchQueue.main.async {
                    self?.leituras = parsed
                }
                
                
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
