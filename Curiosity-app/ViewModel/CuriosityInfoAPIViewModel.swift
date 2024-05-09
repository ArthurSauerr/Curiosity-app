import Foundation

class CuriosityInfoAPIViewModel: ObservableObject {
    @Published var leituras: [LeituraCuriosity] = []

    func fetchRandomFact() {
        // URL da API
        guard let url = URL(string: "https://uselessfacts.jsph.pl/api/v2/facts/random") else {
            print("Invalid URL")
            return
        }

        // Criando uma sessão de URLSession
        let session = URLSession.shared

        // Criando uma tarefa de data
        let task = session.dataTask(with: url) { data, response, error in
            // Verificando se há erro
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }

            // Verificando se há dados
            guard let data = data else {
                print("No data received")
                return
            }

            do {
                // Decodificando os dados em uma instância de LeituraCuriosity
                let fact = try JSONDecoder().decode(LeituraCuriosity.self, from: data)
                DispatchQueue.main.async {
                    // Atualizando a propriedade leituras na thread principal
                    self.leituras.append(fact)
                }
            } catch {
                print("Failed to decode data: \(error.localizedDescription)")
            }
        }

        // Iniciando a tarefa
        task.resume()
    }
}
