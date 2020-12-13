//
//  iDineApp.swift
//  iDine
//
//  Created by Patrik Cesnek on 11/12/2020.
//

import SwiftUI

@main
struct iDineApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppView().environmentObject(order)
        }
    }
}
