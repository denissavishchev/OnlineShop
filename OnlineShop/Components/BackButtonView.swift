//
//  BackButtonView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct BackButtonView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button{
            dismiss()
        } label: {
            ZStack{
                Circle()
                    .frame(width: 34)
                    .foregroundStyle(.black)
                    .opacity(0.3)
                Image(systemName: "chevron.left")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .opacity(0.8)
            }
        }
    }
}

#Preview {
    BackButtonView()
}
