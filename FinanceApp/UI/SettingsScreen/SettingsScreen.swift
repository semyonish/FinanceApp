//
//  SettingsScreen.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 03.02.2025.
//

import SwiftUI

struct SettingsScreen: View {
    @State var newApiKeyCreation: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section("Tinkoff API ключи") {
                        Text("Tinkoff API key 1")
                        Text("Tinkoff API key 2")
                        Button {
                            newApiKeyCreation = true
                        } label: {
                            Text("Добавить ключ")
                        }
                    }
                }
            }
            .navigationTitle("Настройки")
            .fullScreenCover(isPresented: $newApiKeyCreation) {
                AddNewApiKeyScreen()
            }
        }
    }
}

#Preview {
    SettingsScreen()
}
