//
//  BackgroundView.swift
//  Tip Calculator
//
//  Created by Nabiya Alam on 1/4/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            SineWaveView(
                fillColor: .pink.opacity(0.2),
                height: 200
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            SineWaveView(
                fillColor: .pink.opacity(0.2),
                height: 200
            )
            .rotationEffect(Angle(degrees:180))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }.ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
