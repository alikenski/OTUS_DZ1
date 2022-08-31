//
//  BankaScreen.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI

struct BankaScreen: View {
    @State var banka: BankaModel
    
    var body: some View {
        VStack {
            Text("Откладывайте \(banka.percent)% от вашей ЗП в '\(banka.name)'")
                .font(.system(size: 24, weight: .semibold))
        }
        .padding()
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle(banka.name)
    }
}

struct BankaScreen_Previews: PreviewProvider {
    static var previews: some View {
        BankaScreen(banka: BankaModel(name: "Образование", percent: 10))
    }
}
