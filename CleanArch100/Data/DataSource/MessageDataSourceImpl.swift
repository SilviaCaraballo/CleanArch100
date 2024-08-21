//
//  MessageDataSourceImpl.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import Foundation

struct MessageDataSourceImpl: MessageDataSource {
    func getMessages() -> [Message] {
        return [
            Message(id: 1, text: "Hello World"),
            Message(id: 2, text: "Hello World 2"),
            Message(id: 3, text: "Hello World 3")
        ]
    }
}
