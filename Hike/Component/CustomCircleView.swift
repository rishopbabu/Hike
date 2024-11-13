//
//  CustomCircleView.swift
//  Hike
//
//  Created by Rishop Babu on 12/11/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight
                        ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
        }// ZSTACk
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
