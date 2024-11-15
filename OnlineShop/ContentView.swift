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
    
    @FirestoreQuery(collectionPath: "products") var items: [Product]
    
    var body: some View {
        List{
            ForEach(items){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text("\(item.price)")
                    AsyncImage(url: URL(string: item.image), transaction: Transaction(animation: .spring())) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                        .progressViewStyle(CircularProgressViewStyle())
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                case .failure:
                                    Text("Failed to load image")
                                        .foregroundColor(.red)
                                @unknown default:
                                    Text("Unknown error")
                                }
                            }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
