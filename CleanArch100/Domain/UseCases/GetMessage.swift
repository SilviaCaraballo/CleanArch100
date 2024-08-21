//
//  GetMessage.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation

// Caso de uso --> obtener mensajes

// 1
// contirne los diferentes tipos de error
enum UseCaseError: Error {
    case networkError, decodingError
}

// 2
// contiene el metodo para recibir nuestro mensaje
protocol GetMessagesProtocol {
    func execute()-> Result<[Message], UseCaseError>
}

// 3
// Implementacion del caso de uso
struct GetMessagesUseCase: GetMessagesProtocol {
    // Repositorio que actua como interfaz entre el dominio y la capa de datos
    var repository: MessageRepository
    
    func execute()-> Result<[Message], UseCaseError> {
        let messages = repository.getMessages()
        return .success(messages)
    }
}
