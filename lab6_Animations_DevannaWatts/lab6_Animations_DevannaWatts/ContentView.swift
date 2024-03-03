//
//  ContentView.swift
//  lab6_Animations_DevannaWatts
//
//  Different types of swift animations:
//  You can uncomment different parts
//  to try them all out.
//
//
//  Created by Devanna Temple Watts on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    // State variables for different animations
    @State private var scale: CGFloat = 1
    @State private var angle: Double = 0
    @State private var opacity: Double = 1
    @State private var dragOffset = CGSize.zero
    @State private var isShowingRed = false

    var body: some View {
        VStack(spacing: 20) {
            // Implicit animation
            /*
            Button("Tap Me") {
                scale += 0.1
            }
            .padding(50)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(scale)
            .animation(.easeInOut(duration: 1), value: scale)
            */

            // Customizing animations
            /*
            Button("Tap Me") {
                angle += 45
                opacity -= 0.2
            }
            .padding(50)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(.degrees(angle))
            .opacity(opacity)
            .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: angle)
            */

            // Animating bindings
            /*
            Circle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .offset(dragOffset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            dragOffset = gesture.translation
                        }
                        .onEnded { _ in
                            withAnimation(.spring()) {
                                dragOffset = .zero
                            }
                        }
                )
            */

            // Explicit animations
            /*
            Button("Tap Me") {
                withAnimation(.linear(duration: 1)) {
                    angle += 360
                }
            }
            .padding(50)
            .background(Color.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(.degrees(angle))
            */

            // Controlling the animation stack
            /*
            Button("Tap Me") {
                scale += 0.1
                angle += 45
            }
            .padding(50)
            .background(Color.orange)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(scale)
            .rotationEffect(.degrees(angle))
            .animation(.easeInOut(duration: 1), value: scale)
            .animation(.easeInOut(duration: 2), value: angle)
            */

            // Showing and hiding views with transitions
            /*
            VStack {
                Button("Tap Me") {
                    withAnimation {
                        isShowingRed.toggle()
                    }
                }

                if isShowingRed {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 200)
                        .transition(.asymmetric(insertion: .scale, removal: .opacity))
                }
            }
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
