//
//  UIApplication+Ext.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-25.
//

import SwiftUI

extension UIApplication {
    
    func hideKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
