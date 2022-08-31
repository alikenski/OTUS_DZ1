//
//  ContentView.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeScreen(tabSelection: $tabSelection)
                .tag(1)
                .tabItem {
                    Label("Главная", systemImage: "house.fill")
                }
            DashboardScreen()
                .tag(2)
                .tabItem {
                    Label("Статистика", systemImage: "target")
                }
            ProfileScreen()
                .tag(3)
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
