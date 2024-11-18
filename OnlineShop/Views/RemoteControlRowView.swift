//
//  RemoteControlRowView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct RemoteControlRowView: View {
    
    let product: Product
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 25){
            Button{
                
            }label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            }
            .buttonStyle(.plain)
            HStack{
                Button{
                    
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

