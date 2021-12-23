//
//  Operation.swift
//  collections
//
//  Created by Дмитрий Фетюхин on 12.12.2021.
//

import Foundation

enum OperationState {
    case initial, computing, computed
}

class Operation {
    var id: Int = 0
    var name: String
    var output: String?
    var perform: () -> Void
    var state: OperationState = .initial
    init(id: Int = 0, name: String, performBlock: @escaping () -> Void) {
        self.id = id
        self.name = name
        self.perform = performBlock
    }
}
