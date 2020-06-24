//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Barry Martin on 6/23/20.
//

import Foundation

class SandwichStore: ObservableObject{
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
