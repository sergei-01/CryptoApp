//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Sergey Agmalin on 2022-07-26.
//

import SwiftUI

struct XMarkButton: View {
    // X button doesnt work after scrolling shee up or down a bit. Presentation mode is confused. Add binding instead.
//    @Environment(\.presentationMode) var presentationMode
    @Binding var sheeIsPresented: Bool
    
    var body: some View {
        Button {
//          presentationMode.wrappedValue.dismiss()
            sheeIsPresented = false
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(sheeIsPresented: .constant(false))
    }
}
