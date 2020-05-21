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

enum Figure: String, CaseIterable {
   case rect = "Rectangle"
   case circle = "Circle"
   case triangle = "Triangle"
}



struct View_Picker: View {
   
   @State private var selected = 0//Figure.rect.rawValue
   
   var body: some View {
      VStack {
         Text("\(selected)")
//         Group {
//            if selected == Figure.rect.rawValue {
//               Rectangle()
//            } else if selected == Figure.circle.rawValue {
//               Circle()
//            } else if selected == Figure.triangle.rawValue {
//               Path { path in
//                  path.move(to: CGPoint(x: 150, y: 0))
//                  path.addLine(to: CGPoint(x: 300, y: 300))
//                  path.addLine(to: CGPoint(x: 0, y: 300))
//               }
//            }
//         }
//         .frame(width: 300, height: 300)
         
         
         Picker(selection: $selected, label: Text("Select")) {
//            ForEach(Figure.allCases, id: \.rawValue) { item in
//               Text("\(item.rawValue)")
//            }
            ForEach(0 ..< 100) {
               Text("\($0)")
            }
         }
         .labelsHidden()
         .padding()
         //.pickerStyle(SegmentedPickerStyle())
      }
   }
}

struct View_Picker_Previews: PreviewProvider {
   static var previews: some View {
      View_Picker()
   }
}
