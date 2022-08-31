//
//  HomeScreen.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

struct HomeScreen: View {
    @Binding var tabSelection: Int
    @EnvironmentObject var dashboardVM: DashboardVM
    @State var userName = "Алишер"
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(userName: $userName)
                    .frame(height: 50)
                Spacer()
                //Открывает 2 таб
                Button {
                    tabSelection = 2
                } label: {
                    Text("Открыть статистику")
                }
                Spacer()
                Button {
                    userName = "Арман"
                } label: {
                    Text("Поменять имя")
                }
                Spacer()
                //Открывает BankaScreen, а именно Необходимое
                NavigationLink(destination: BankaScreen(banka: dashboardVM.bankaList[0])) {
                    Text("Открыть 'Необходимое'")
                }
                Spacer()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(tabSelection: .constant(1))
    }
}
