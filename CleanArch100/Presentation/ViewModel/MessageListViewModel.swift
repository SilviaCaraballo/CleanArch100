//
//  MessageListViewModel.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation

// 1
// Creamos la base para actulizar el contenido de la vista
class MessageListViewModel: ObservableObject {
    // 2
    // El caso de uso es ejecutado proporcionando el repositorio y datasource
    var getMessagesUseCase = GetMessagesUseCase(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl()))
    
    // 3
    // El atributo de los mensajes contiene la respuesta de ejecución de cada caso
    @Published var messages: [Message] = []
    
    // 4
    // este metodo sera llamado desde la vista y ejecutado desde el caso de uso.
    func getMessages() {
        let result = getMessagesUseCase.execute()
        switch result {
        case .success(let messages):
            self.messages = messages
        case .failure(let error):
            print(error)
        }
    }
}
