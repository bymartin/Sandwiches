//
//  SandwichesApp.swift
//  Shared
//
//  Created by Barry Martin on 6/23/20.
//

import SwiftUI

@main
struct SandwichesApp: App {
    // source of truth for a mutable object
    // like @State for a value
    @StateObject private var store = SandwichStore(sandwiches: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
