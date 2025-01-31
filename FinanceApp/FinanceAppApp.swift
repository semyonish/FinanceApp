//
//  FinanceAppApp.swift
//  FinanceApp
//
//  Created by Semyon Ishkhanyan on 31.01.2025.
//

import SwiftUI
import SwiftData

enum Tab1: Int {
    case main
    case bank
    case settings
    
    func tabName() -> String {
        switch self {
        case .main:
            "Главная"
        case .bank:
            "Банки"
        case .settings:
            "Настройки"
        }
    }
}

class NavigationService: ObservableObject {
    @Published var selectedTab: Tab1 = .main
    @Published var depositShouldOpen: Deposit?
    
    public func goToDeposit(_ deposit: Deposit) {
        selectedTab = .bank
        depositShouldOpen = deposit
    }
}

struct AppWindow: View {
    @StateObject var navigationService = NavigationService()
    
    var body: some View {
        TabView(selection: $navigationService.selectedTab) {
            MainScreen()
                .tabItem {
                    Label(Tab1.main.tabName(), systemImage: "house")
                }
                .tag(Tab1.main)
            BankAccountsScreen()
                .tabItem {
                    Label(Tab1.bank.tabName(), systemImage: "rublesign.bank.building")
                }
                .tag(Tab1.bank)
            SettingsScreen()
                .tabItem {
                    Label(Tab1.settings.tabName(), systemImage: "gearshape")
                }
                .tag(Tab1.settings)
        }
        .environmentObject(navigationService)
    }
}

#Preview {
    AppWindow()
}

@main
struct FinanceAppApp: App {
    var body: some Scene {
        WindowGroup {
            AppWindow()
//                .modelContainer(for: [Deposit.self])
        }
    }
}
