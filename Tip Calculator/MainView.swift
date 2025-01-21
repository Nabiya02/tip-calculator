//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Nabiya Alam on 1/3/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var isIPad: Bool{
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool{
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var body: some View {
        VStack {
            if isPortraitPhone{
                Text("")
            }else{
                Text("")
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
