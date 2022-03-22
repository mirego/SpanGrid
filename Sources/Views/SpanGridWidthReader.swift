import SwiftUI

struct SpanGridWidthReaderPreferenceKey: PreferenceKey {
    static var defaultValue: CGRect = .zero

    static func reduce(value: inout CGRect, nextValue: () -> CGRect) { }

    typealias Value = CGRect
}

struct SpanGridWidthReader: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear.preference(key: SpanGridWidthReaderPreferenceKey.self, value: geometry.frame(in: .local))
        }
    }
}
