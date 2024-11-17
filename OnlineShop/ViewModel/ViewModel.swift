//
//  ViewModel.swift
//  OnlineShop
//
//  Created by Devis on 17/11/2024.
//

import Foundation
import FirebaseFirestore

final class ViewModel: ObservableObject{
    private let db = Firestore.firestore().collection("products")
    
    func toggleFavorite(product: Product){
        guard let id = product.id else{return}
        db.document(id).updateData(["isFavorite" : !product.isFavorite])
    }
}
