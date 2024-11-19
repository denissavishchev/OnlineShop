//
//  CartView.swift
//  OnlineShop
//
//  Created by Devis on 16/11/2024.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreCombineSwift


struct CartView: View {
    
    @EnvironmentObject var vm: ViewModel
    @FirestoreQuery(collectionPath: "products") private var items: [Product]
    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                ForEach(items.filter{$0.quantityInCart ?? 0 > 0}) { item in
                    ProductRow(product: item)
                }
            }
            Text("Total: \(vm.totalPrice)")
                .titleFont()
                .padding(.bottom)
            CustomMainButton(title: "Buy") {
                
            }
            .padding(.horizontal, 30)
        }
        .navigationTitle("Cart")
        .background(.secondary.opacity(0.3))
    }
}

#Preview {
    CartView()
}
