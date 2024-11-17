//
//  ContentView.swift
//  OnlineShop
//
//  Created by Devis on 15/11/2024.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

struct ContentView: View {
    
    @EnvironmentObject var vm: ViewModel
    @FirestoreQuery(collectionPath: "products") var items: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns){
                    ForEach(items){ item in
                        ProductCardView(product: item)
                    }
                }
            }
            .padding(.horizontal, 10)
            .background(.secondary.opacity(0.3))
            .shadow(color: .black.opacity(0.4), radius: 8, x: 5, y: 8)
            .navigationTitle("Stones")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    NavigationLink(destination: FavoritesView()){
                        Image(systemName: "heart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: CartView()){
                        Image(systemName: "cart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
}
