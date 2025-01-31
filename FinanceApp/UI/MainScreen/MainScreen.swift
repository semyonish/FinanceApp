//
//  MainScreen.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 31.01.2025.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject private var navigationService: NavigationService
    
    var body: some View {
        VStack {
            AnimationView()
                .frame(width: 200, height: 200)
            Button("Показать вклад") {
                navigationService.goToDeposit(Deposit.exampleInstances[0])
            }
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MainScreen()
        .environmentObject(NavigationService())
}
