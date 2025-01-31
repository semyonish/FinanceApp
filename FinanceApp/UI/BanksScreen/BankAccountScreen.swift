//
//  BankAccountScreen.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 03.02.2025.
//

import SwiftUI

struct BankAccountScreen: View {
    let deposit: Deposit
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading) {
                Text("Сумма: \(deposit.sum)").font(.title2)
                Text("Ставка: \(deposit.percentage)%").font(.title3)
            }
            
            VStack(alignment: .leading) {
                Text("Операции").font(.headline)
            }
        }
        .navigationTitle(deposit.name)
        .navigationBarTitleDisplayMode(.inline)
        .padding(.all, 16)
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

#Preview {
    NavigationStack {
        BankAccountScreen(deposit: Deposit(name: "Вклад", sum: 10000, percentage: 5))
    }
}
