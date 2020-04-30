@_private(sourceFile: "ContentView.swift") import DetectiveBoard
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/rgero215/dev/DetectiveBoard/DetectiveBoard/DetectiveBoard/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(ContentView(), "#10405.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/rgero215/dev/DetectiveBoard/DetectiveBoard/DetectiveBoard/ContentView.swift", line: 13)
        AnyView(__designTimeSelection(BinaryTreeView(), "#10405.[1].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = DetectiveBoard.ContentView
typealias ContentView_Previews = DetectiveBoard.ContentView_Previews