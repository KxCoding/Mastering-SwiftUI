//
//  Sections.swift
//  Layouts
//
//  Created by KxCoding on 2022/02/13.
//

import SwiftUI

struct Sections: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                EmojiView(emoji: "😀")
                EmojiView(emoji: "😍")
                EmojiView(emoji: "😎")
                
                EmojiView(emoji: "🐶")
                EmojiView(emoji: "🐱")
                EmojiView(emoji: "🐯")
                
                EmojiView(emoji: "🍎")
                EmojiView(emoji: "🍌")
                EmojiView(emoji: "🍓")
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct Sections_Previews: PreviewProvider {
    static var previews: some View {
        Sections()
    }
}
