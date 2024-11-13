//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Rishop Babu on 12/11/24.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with nil coalescing
                // Condition ? A : B
                // A: when user pressed the button
                // B: when the button is not pressed
                
                configuration.isPressed ?
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            .cornerRadius(40)
    }
}
