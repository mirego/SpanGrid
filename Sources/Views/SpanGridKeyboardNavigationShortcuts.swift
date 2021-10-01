//
// SpanGridKeyboardNavigationShortcuts.swift
//
// Copyright 2021 • James Sherlock
//

import SwiftUI

struct SpanGridKeyboardNavigationShortcuts: View {
    enum Direction: CaseIterable {
        case up
        case down
        case left
        case right
    }
    
    let enabled: Bool
    let callback: (Direction) -> Void
    
    var body: some View {
        VStack {
            if enabled {
                #warning("Feature: Could we hide the button labels from discoverability window? Or do we need to localize?")
                #warning("Feature: Can we use arrow keys instead of WASD?")
                
                Button("Navigate up a row") { callback(.up) }
                    .keyboardShortcut("w", modifiers: [])
                
                Button("Navigate down a row") { callback(.down) }
                    .keyboardShortcut("s", modifiers: [])
                
                Button("Navigate to previous item") { callback(.left) }
                    .keyboardShortcut("a", modifiers: [])
                
                Button("Navigate to next item") { callback(.right) }
                    .keyboardShortcut("d", modifiers: [])
            }
        }
    }
}
