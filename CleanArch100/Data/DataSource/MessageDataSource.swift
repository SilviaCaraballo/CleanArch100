//
//  MessageDataSource.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation


// Crea un contrato que define como queremos obtener el mensaje de la fuente
protocol MessageDataSource {
    // metodo que devuelve una matriz de mensajes
    func getMessages() ->[Message]
}
