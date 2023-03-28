//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-26.
//

import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
