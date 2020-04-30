//
//  CollectDict.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import Foundation
import SwiftUI

struct CollectDict<Key: Hashable, Value>: PreferenceKey {
    static var defaultValue: [Key:Value] { [:] }
    static func reduce(value: inout [Key:Value], nextValue: () -> [Key:Value]) {
        value.merge(nextValue(), uniquingKeysWith: { $1 })
    }
}
