//
//  AddNewApiKeyScreen.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 16.02.2025.
//

import SwiftUI

struct AddNewApiKeyScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Тут будет добавление нового ключа")
            }
            .navigationTitle("Добавление нового ключа")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button("Закрыть") {
                dismiss()
            })
        }
    }
}

#Preview {
    AddNewApiKeyScreen()
}
