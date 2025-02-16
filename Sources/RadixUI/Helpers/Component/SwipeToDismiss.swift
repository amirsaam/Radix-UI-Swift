//
//  SwipeToDismiss.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/25/1403 AP.
//

import SwiftUI

public struct RadixSwipeToDismiss: ViewModifier {

    @Binding var isPresented: Bool
    var direction: DismissSwipeDirection

    init(
        isPresented: Binding<Bool>,
        direction: DismissSwipeDirection
    ) {
        self._isPresented = isPresented
        self.direction = direction
    }

    @State private var dragOffset: CGFloat = 0
    private var dismissThreshold: Double = 60.0

    public func body(content: Content) -> some View {
        content
            .offset(y: direction == .down ? dragOffset : -dragOffset)
            .opacity(max(1 - (abs(dragOffset) / dismissThreshold), 0))
            .gesture(

                DragGesture()
                    .onChanged { value in
                        let dragAmount = value.translation.height
                        if direction == .down, dragAmount > 0 {
                            dragOffset = dragAmount
                        } else if direction == .up, dragAmount < 0 {
                            dragOffset = abs(dragAmount)
                        }
                    }
                    .onEnded { value in
                        withAnimation {
                            if dragOffset > dismissThreshold {
                                isPresented = false
                            }
                            dragOffset = 0
                        }
                    }

            )
    }

}
