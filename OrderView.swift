//
//  OrderView.swift
//  iDine
//
//  Created by Patrik Cesnek on 12/12/2020.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView{
            List{
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Place order")
                    }
                }
            }
            .navigationBarTitle(Text("Order"))
            .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
