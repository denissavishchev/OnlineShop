//
//  RemoteControlRowView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct RemoteControlRowView: View {
    
    let product: Product
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 25){
            Button{
                vm.removeFromCart(product: product)
            }label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            }
            .buttonStyle(.plain)
            HStack{
                Button{
                    vm.decreaseQuantity(product: product)
                }label: {
                    Image(systemName: "minus.rectangle.fill")
                        .foregroundStyle(.primary)
                        .font(.title)
                    
                }
                .buttonStyle(.plain)
                
                if let quantityInCart = product.quantityInCart{
                    Text("\(quantityInCart)")
                        .titleFont()
                }
                
                Button{
                    vm.increaseQuantity(product: product)
                }label: {
                    Image(systemName: "plus.rectangle.fill")
                        .foregroundStyle(.primary)
                        .font(.title)
                    
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
    }
}

