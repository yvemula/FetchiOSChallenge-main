//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import SwiftUI

struct CustomText: View {
    var text: String
    var font: Font
    var isBold: Bool
    var lineSpacing: CGFloat
    var kerning: CGFloat
    var paddingAmount: CGFloat?
    var multilineTextAlignment: TextAlignment
    
    var body: some View {
        Text(text)
            .font(font)
            .bold(isBold)
            .multilineTextAlignment(multilineTextAlignment)
            .lineSpacing(lineSpacing)
            .kerning(kerning)
            .padding(paddingAmount ?? 0)
    }
}

struct SubtitleText: View {
    var text: String
    
    var body: some View {
        CustomText(
            text: text.uppercased(),
            font: .title,
            isBold: true,
            lineSpacing: 4.0,
            kerning: 2.0,
            paddingAmount: 16,
            multilineTextAlignment: .center
        )
    }
}

struct TitleText: View {
    var text: String
    
    var body: some View {
        CustomText(
            text: text.uppercased(),
            font: .largeTitle,
            isBold: true,
            lineSpacing: 4.0,
            kerning: 2.0,
            paddingAmount: 16,
            multilineTextAlignment: .center
        )
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        CustomText(
            text: text,
            font: .subheadline,
            isBold: false,
            lineSpacing: 13.0,
            kerning: 0.0,
            paddingAmount: nil,
            multilineTextAlignment: .center
        )
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TitleText(text: "Title")
            SubtitleText(text: "Subtitle")
            BodyText(text: "random")
        }
    }
}
