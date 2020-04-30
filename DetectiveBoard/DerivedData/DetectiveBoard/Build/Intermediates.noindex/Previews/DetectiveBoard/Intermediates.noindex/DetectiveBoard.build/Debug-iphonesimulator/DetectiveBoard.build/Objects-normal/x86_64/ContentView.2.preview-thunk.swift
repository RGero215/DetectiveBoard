@_private(sourceFile: "ContentView.swift") import DetectiveBoard
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rgero215/dev/DetectiveBoard/DetectiveBoard/DetectiveBoard/ContentView.swift", line: 19)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rgero215/dev/DetectiveBoard/DetectiveBoard/DetectiveBoard/ContentView.swift", line: 13)
        AnyView(BinaryTreeView())
#sourceLocation()
    }
}

typealias ContentView = DetectiveBoard.ContentView
typealias ContentView_Previews = DetectiveBoard.ContentView_Previews