//
//  String+Ext.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-28.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
