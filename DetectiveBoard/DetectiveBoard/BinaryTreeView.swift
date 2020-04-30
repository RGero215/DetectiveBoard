//
//  BinaryTreeView.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import SwiftUI

let binaryTree = Tree<Int>(50, children: [
    Tree(17, children: [
        Tree(12),
        Tree(23)
    ]),
    Tree(72, children: [
        Tree(54),
        Tree(72)
    ]),
    Tree(17, children: [
        Tree(12),
        Tree(23)
    ]),
    Tree(72, children: [
        Tree(54),
        Tree(72)
    ]),
    Tree(17, children: [
        Tree(12),
        Tree(23)
    ]),
    Tree(72, children: [
        Tree(54),
        Tree(72)
    ]),
    Tree(17, children: [
        Tree(12),
        Tree(23)
    ]),
    Tree(72, children: [
        Tree(54),
        Tree(72)
    ])
])

let uniqueTree = binaryTree.map(Unique.init)

struct BinaryTreeView: View {
    @State var tree = uniqueTree
       var body: some View {
        HStack{
            VStack {
                Button(action: {
                    withAnimation(.default) {
                        self.tree.insert(Int.random(in: 0...100))
                    }
                }, label: { Text("Insert random number") })
                Diagram(tree: tree, node: { value in
                    Button(action: {
                        print(value.value)
                    }) {
                        Text("\(value.value)")
                        .modifier(RoundedCircleStyle())
                        .foregroundColor(Color.black)
                    }
                    
                })
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
            
       }
}
