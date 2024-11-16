//
//  CardImageView.swift
//  OnlineShop
//
//  Created by Devis on 16/11/2024.
//

import SwiftUI

struct CardImageView: View {
    
    let url: URL
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
            AsyncImage(url: url){ image in
                image
                    .resizable()
                    .padding(10)
                    .frame(width: width, height: height)
                    
            }placeholder: {
                ProgressView()
                    .frame(width: width, height: height)
                }
    }
}

