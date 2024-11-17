//
//  ProductCardView.swift
//  OnlineShop
//
//  Created by Devis on 16/11/2024.
//

import SwiftUI

struct ProductCardView: View {
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    var body: some View {
        GeometryReader{geo in
            let size = geo.size
            
            ZStack(alignment: .bottom){
                ZStack(alignment: .topTrailing){
                    if let url = URL(string: product.image){
                        CardImageView(url: url, width: size.width, height: size.height)
                        
                        Button{
                            vm.toggleFavorite(product: product)
                        }label: {
                            Image(systemName: "heart.fill")
                                .padding(10)
                                .foregroundColor(product.isFavorite ? .red : .white)
                                .background(.secondary)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
                VStack{
                    Text(product.name)
                        .titleFont()
                    Text("$\(product.price)")
                        .subTitle()
                }
                .padding(4)
                .frame(maxWidth: .infinity)
                .background(.background.opacity(0.5))
                .cornerRadius(18)
                .padding(4)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.black.opacity(0.9))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

