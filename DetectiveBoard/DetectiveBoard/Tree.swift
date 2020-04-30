//
//  Tree.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import Foundation

struct Tree<A> {
    var value: A
    var children: [Tree<A>] = []
    init(_ value: A, children: [Tree<A>] = []) {
        self.value = value
        self.children = children
    }
}

extension Tree {
    func map<B>(_ transform: (A) -> B) -> Tree<B> {
        return Tree<B>(transform(value), children: children.map({ $0.map(transform) }))
    }
}

extension Tree where A == Unique<Int> {
    mutating func insert(_ number: Int) {
        if number < value.value {
            if children.count > 0 {
                children[0].insert(number)
            } else {
                children.append(Tree(Unique(number)))
            }
        } else {
            if children.count == 2 {
                children[1].insert(number)
            } else if children.count == 1 && children[0].value.value > number {
                children[0].insert(number)
            } else {
                children.append(Tree(Unique(number)))
            }
        }
    }
}
