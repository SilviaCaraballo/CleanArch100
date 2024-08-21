//
//  Message.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation

struct Message: Identifiable {
    // Usado por identifiable para identificar las celdas de la lista
    let id: Int
    // Contenido del mensaje
    let text: String
}
