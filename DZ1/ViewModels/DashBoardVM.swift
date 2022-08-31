//
//  DashBoardVM.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import Foundation

final class DashboardVM: ObservableObject {
    @Published private(set) var bankaList: [BankaModel] = [
        BankaModel(name: "Необходимое", percent: 55),
        BankaModel(name: "Развлечение", percent: 10),
        BankaModel(name: "Фин. свобода", percent: 10),
        BankaModel(name: "Образование", percent: 10),
        BankaModel(name: "Резерв на покупки", percent: 10),
        BankaModel(name: "Благотворительность", percent: 5)
    ]
}
