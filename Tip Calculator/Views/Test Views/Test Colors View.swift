import SwiftUI

struct Test_Colors_View: View {
    let colors: [Color] = [.myRed, .myBlack, .myGray, .myWhite, .myDarkGreen, .myLightGreen]
    let dim = 50.0
    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview {
    Test_Colors_View()
}
