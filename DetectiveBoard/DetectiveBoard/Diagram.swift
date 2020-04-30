//
//  Diagram.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import SwiftUI

struct Diagram<A: Identifiable, V: View>: View {
    let tree: Tree<A>
    let node: (A) -> V
    
    typealias Key = CollectDict<A.ID, Anchor<CGPoint>>


    var body: some View {
        return VStack(alignment: .center) {
                
                node(tree.value)
                .anchorPreference(key: Key.self, value: .center, transform: {
                    [self.tree.value.id: $0]
                })
                HStack(alignment: .bottom, spacing: 10) {
                    ForEach(tree.children, id: \.value.id, content: { child in
                        Diagram(tree: child, node: self.node)
                    })
                }
            }.backgroundPreferenceValue(Key.self, { (centers: [A.ID: Anchor<CGPoint>]) in
                GeometryReader { proxy in
                    ForEach(self.tree.children, id: \.value.id, content: { child in
                        Line(
                            from: proxy[centers[self.tree.value.id]!],
                            to: proxy[centers[child.value.id]!]
                        ).stroke()
                    })
                }
            })
        
    }
}
