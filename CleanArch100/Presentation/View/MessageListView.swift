//
//  MessageListView.swift
//  CleanArch100
//
//  Created by Silvia Caraballo Fernandez on 21/8/24.
//

import SwiftUI

struct MessageListView: View {
    @StateObject var vieModel = MessageListViewModel()
    var body: some View {
        VStack {
            Text("Messages:")
            List(vieModel.messages) { message in
                Text(message.text)
            }
        }
        .task {
            vieModel.getMessages()
        }
    }
}

#Preview {
    MessageListView()
}
