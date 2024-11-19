//
//  DetailView.swift
//  OnlineShop
//
//  Created by Devis on 18/11/2024.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack{
                if let url = URL(string: product.image){
                    CardImageView(url: url, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                }
                DetailInfoView(product: product)
            }
            .background(.secondary.opacity(0.3))
            .navigationBarBackButtonHidden()
            BackButtonView()
                .padding(.leading)
        }
    }
}

#Preview {
    DetailView(product: Product(
        name: "Orange energy",
        description: "The Orange Energy Stone is a radiant and dynamic artifact that resonates with vibrant, life-affirming energy. Known for its association with vitality, creativity, and the forces of transformation, this stone is often sought after by those looking to amplify their personal power or unlock hidden potential.",
        image: "https://firebasestorage.googleapis.com/v0/b/devis-social-shop.appspot.com/o/images%2Forange_energy.png?alt=media&token=c9e21ca2-04c4-4afa-91ce-e5e74d4ea689",
        price: 765,
        isFavorite: true
    ))
    .environmentObject(ViewModel())
}

