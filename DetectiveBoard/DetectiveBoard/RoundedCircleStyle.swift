//
//  RoundedCircleStyle.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import SwiftUI

struct RoundedCircleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 50)
            .background(Circle().stroke())
            .background(Circle().fill(Color.white))
            .padding(10)
    }
}
