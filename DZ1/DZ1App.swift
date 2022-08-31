//
//  DZ1App.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

@main
struct DZ1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DashboardVM())
        }
    }
}
