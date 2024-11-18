//
//  ProductRow.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    
    var body: some View {
            ZStack(alignment: .trailing) {
                HStack(spacing: 20){
                    if let url = URL(string: product.image){
                        CardImageView(url: url, width: 70, height: 100)
                            .background(.black)
                            .cornerRadius(20)
                    }
                    VStack(alignment: .leading, spacing: 20){
                        Text(product.name)
                        Text("$\(product.price)")
                    }
                    Spacer()
                }
                .padding(5)
                .background(.background)
                .cornerRadius(20)
                
                RemoteControlRowView(product: product)
            }
            .shadow(color: .black.opacity(0.1), radius: 7, x: 5, y: 6)
            .padding(.horizontal, 10)
            .background(.secondary.opacity(0.3))
    }
}

#Preview {
    ProductRow(product: Product(
        name: "Orange energy",
        description: "The Orange Energy Stone is a radiant and dynamic artifact that resonates with vibrant, life-affirming energy. Known for its association with vitality, creativity, and the forces of transformation, this stone is often sought after by those looking to amplify their personal power or unlock hidden potential.",
        image: "https://firebasestorage.googleapis.com/v0/b/devis-social-shop.appspot.com/o/images%2Forange_energy.png?alt=media&token=c9e21ca2-04c4-4afa-91ce-e5e74d4ea689",
        price: 765,
        isFavorite: true,
        quantityInCart: 4
    ))
}


