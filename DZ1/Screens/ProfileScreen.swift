//
//  ProfileScreen.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

struct ProfileScreen: View {
    @State var isSettingsModalOpened: Bool = false
    
    var body: some View {
        Button {
            isSettingsModalOpened.toggle()
        } label: {
            Text("Открыть настройки")
        }.sheet(isPresented: $isSettingsModalOpened) {
            SettingsScreen()
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
