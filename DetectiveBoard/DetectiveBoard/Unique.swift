//
//  Unique.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import Foundation

class Unique<A>: Identifiable {
    let value: A
    init(_ value: A) { self.value = value }
}
