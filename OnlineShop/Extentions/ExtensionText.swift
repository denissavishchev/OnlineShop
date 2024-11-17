//
//  ExtensionText.swift
//  OnlineShop
//
//  Created by Devis on 17/11/2024.
//

import SwiftUI

extension Text{
    func titleFont() -> some View{
        self
            .foregroundStyle(.primary)
            .font(.system(size: 22, weight: .bold, design: .rounded))
    }
    
    func subTitle() -> some View{
        self
            .foregroundStyle(.primary)
            .font(.system(size: 18, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}

struct fontView: View {
    var body: some View {
        Text("Title font")
            .titleFont()
        Text("SubTitle font")
            .subTitle()
    }
}

#Preview {
    fontView()
}
