//
//  Mastering SwiftUI
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SwiftUI

struct FontStyle: View {
   var body: some View {
      VStack(spacing: 20) {
         Text("No Style")
            .font(.system(size: 40))
         
         Text("Bold")
            .font(.system(size: 40))
            .bold()
         
         Text("Italic")
            .font(.system(size: 40))
            .italic()
         
         Text("Underline")
            .font(.system(size: 40))
            .underline()
         
         Text("Strikethrough")
            .font(.system(size: 40))
            .strikethrough()
         
         Text("123")
            .font(.system(size: 40))
         
         Text("Monospaced 123")
            .font(Font.system(size: 40).monospacedDigit())
         
         HStack {
            Text("Small ")
               .font(Font.system(size: 40))
            
            Text("Capitals")
            .font(Font.system(size: 40).smallCaps())
         }
                  
         Text("Lower Small Caps")
            .font(Font.system(size: 40).lowercaseSmallCaps())
         
         Text("Upper Small Caps")
            .font(Font.system(size: 40).uppercaseSmallCaps())
      }
   }
}

struct FontStyle_Previews: PreviewProvider {
   static var previews: some View {
      FontStyle()
   }
}
