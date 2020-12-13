//
//  ItemDetail.swift
//  iDine
//
//  Created by Patrik Cesnek on 12/12/2020.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .font(.caption)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .offset(x: -16, y: -5)
            }
            Text(item.description)
                .padding(.horizontal)
            
            Button("Orther this") {
                order.add(item: item)
            }
            .font(.headline)
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()

    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
