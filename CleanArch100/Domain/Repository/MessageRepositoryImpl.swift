//
//  MessageRepositoryImpl.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation

// Agregamos una capa al codigo evitando que los casos de uso dependan de las fuentes
struct MessageRepositoryImpl: MessageRepository {
    var dataSource: MessageDataSource
    
    // metodo para recuperar los mensajes
    func getMessages() -> [Message] {
        return dataSource.getMessages()
    }
}
