//
//  ContentView.swift
//  DetectiveBoard
//
//  Created by Ramon Geronimo on 4/25/20.
//  Copyright © 2020 Ramon Geronimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView([.horizontal, .vertical]) {
                BinaryTreeView()
            }
            .frame(width: geometry.size.width * 2, height: geometry.size.height * 2)
            .background(Color.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
