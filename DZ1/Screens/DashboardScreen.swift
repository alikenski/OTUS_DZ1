//
//  DashboardScreen.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

struct DashboardScreen: View {
    @StateObject var dashboardVM: DashboardVM = .init()
    
    var body: some View {
        NavigationView {
            List(dashboardVM.bankaList) { banka in
                NavigationLink(destination: BankaScreen(banka: banka)) {
                    Text("\(banka.name) - \(banka.percent)%")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarTitle("Статистика")
            .navigationBarHidden(false)
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
