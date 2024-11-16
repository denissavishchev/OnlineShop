//
//  ProductCardView.swift
//  OnlineShop
//
//  Created by Devis on 16/11/2024.
//

import SwiftUI

struct ProductCardView: View {
    
    let product: Product
    
    var body: some View {
        GeometryReader{geo in
            let size = geo.size
            
            ZStack(alignment: .topTrailing){
                if let url = URL(string: product.image){
                    CardImageView(url: url, width: size.width, height: size.height)
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "heart.fill")
                            .padding(10)
                            .foregroundColor(product.isFavorite ? .red : .white)
                            .background(.gray)
                            .clipShape(Circle())
                            .padding()
                    }
                }
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.black)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(10)
    }
}

