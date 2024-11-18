//
//  DetailInfoView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct DetailInfoView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack{
                Text(product.name)
                    .titleFont()
                Spacer()
                Text("$\(product.price)")
                    .titleFont()
            }
            Text(product.description)
                .subTitle()
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(6)
            Spacer()
            Button{
                //action
            }label: {
                Text("Add to cart")
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(Capsule())
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 8)
            }
        }
        .padding(.horizontal, 30)
    }
}


