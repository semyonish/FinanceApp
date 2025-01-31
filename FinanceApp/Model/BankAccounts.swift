//
//  BankAccounts.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 16.02.2025.
//

import Foundation
import SwiftData

enum BankAccountType {
    case deposit, creaditCard, debitCard
}

@Model
class Deposit {
    var name: String
    var sum: Double
    var percentage: Double
    var openDate: Date?
    var closeData: Date?
    
    init(name: String, sum: Double, percentage: Double, openDate: Date? = nil, closeData: Date? = nil) {
        self.name = name
        self.sum = sum
        self.percentage = percentage
        self.openDate = openDate
        self.closeData = closeData
    }
    
    static let exampleInstances = [
        Deposit(name: "Вклад1", sum: 10_000, percentage: 12),
        Deposit(name: "Вклад2", sum: 12_000, percentage: 21),
        Deposit(name: "Вклад3", sum: 13_000, percentage: 20),
    ]
}
