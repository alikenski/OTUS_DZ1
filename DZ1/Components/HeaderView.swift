//
//  HeaderView.swift
//  DZ1
//
//  Created by Alish Aidarkhan on 31.08.2022.
//

import SwiftUI
import UIKit

struct HeaderView: UIViewRepresentable {
    @Binding var userName: String
    
    func makeUIView(context: Context) -> UIView {
        let userNameLabel: UILabel = .init()
        let headerView = UIView()
        userNameLabel.textColor = .white
        userNameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        headerView.backgroundColor = .black
        headerView.addSubview(userNameLabel)
        userNameLabel.tag = 7292
        
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16).isActive = true
        userNameLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        
        return headerView
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        if let userNameLabel = uiView.viewWithTag(7292) as? UILabel {
            userNameLabel.text = "Привет, " + userName
        }
    }
}
