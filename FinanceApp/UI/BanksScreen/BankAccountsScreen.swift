//
//  BankAccountsScreen.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 31.01.2025.
//

import SwiftUI
import SwiftData

struct DepositModel: Hashable {
    var name: String
}

struct BankAccountsScreen: View {
    @Environment(\.modelContext) private var context
    @EnvironmentObject private var navigationService: NavigationService
//    @Query(sort: \Deposit.name) var allDeposits: [Deposit]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Депозиты") {
                    ForEach(Deposit.exampleInstances) { deposit in
                        NavigationLink(value: deposit) {
                            Text(deposit.name)
                        }
                    }
                }
                
            }
            .navigationTitle("Банковские счета")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button("w", systemImage: "plus", action: {
                print(String(describing: navigationService.depositShouldOpen?.name))
            }))
            .navigationDestination(item: $navigationService.depositShouldOpen) { deposit in
                BankAccountScreen(deposit: deposit)
            }
            .navigationDestination(for: Deposit.self) { deposit in
                BankAccountScreen(deposit: deposit)
            }
        }
    }
}

#Preview {
    BankAccountsScreen()
        .environmentObject(NavigationService())
}
