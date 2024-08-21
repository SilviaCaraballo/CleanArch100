//
//  MessageRepository.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation
protocol MessageRepository {
    func getMessages()-> [Message]
}
