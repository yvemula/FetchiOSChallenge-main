//
//  Constants.swift
//  Fetch iOS Challenge
//
//  Created by Yathin Vemula on 6/28/24.
//

import SwiftUI

struct SubtitleText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .font(.title)
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .kerning(2.0)
      .padding()
  }
}

struct TitleText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .font(.largeTitle)
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .kerning(2.0)
      .padding()
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.subheadline)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack{
      TitleText(text: "Title")
      BodyText(text: "random text blah blah blahrandom text blah blah blahrandom text blah blah blahrandom text blah blah blahrandom text blah blah blahrandom text blah blah blah")
    }
  }
}
