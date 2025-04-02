public import SwiftUI

public extension View {
    func onChange<V: Equatable>(of value: V, to newValue: V, perform action: @escaping () -> Void) -> some View {
        onChange(of: value) { _, value in
            if value == newValue {
                action()
            }
        }
    }

    func onChange<V: Equatable>(of value: V, from oldValue: V, perform action: @escaping () -> Void) -> some View {
        onChange(of: value) { value, _ in
            if value == oldValue {
                action()
            }
        }
    }

    func onAnyChange<V: Equatable>(of value: V, perform action: @escaping () -> Void) -> some View {
        onChange(of: value) { _, _ in
            action()
        }
    }
}
