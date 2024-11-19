//
//  DetailInfoView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct DetailInfoView: View {
    
    @EnvironmentObject var vm: ViewModel
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
            CustomMainButton(title: "Add to cart") {
                vm.addToCart(product: product)
            }
        }
        .padding(.horizontal, 30)
    }
}


