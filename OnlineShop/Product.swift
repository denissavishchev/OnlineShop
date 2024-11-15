//
//  Product.swift
//  OnlineShop
//
//  Created by Devis on 15/11/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

struct Product: Identifiable, Codable{
    @DocumentID var id: String?
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavorite: Bool
    var quantityInCart: Int?
}
