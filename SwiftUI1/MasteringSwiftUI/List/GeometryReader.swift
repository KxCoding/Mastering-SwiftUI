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

//struct View_GeometryReader: View {
//   var items = AppleProduct.sampleList
//   
//   var body: some View {
//      VStack {
//         
//         //         VStack(spacing: 30) {
//         //            ForEach(0..<3) { row in
//         //               HStack(spacing: 30) {
//         //                  ForEach(0..<2) { col in
//         //                     GridItem(product: self.items[(row * 3 + col) % self.items.count])
//         //                        .frame(width: 150, height: 150)
//         //                  }
//         //               }
//         //            }
//         //         }
//         
//         GeometryReader { geometry in
//            ScrollView {
//            
//               VStack(spacing: 30) {
//                  
//                  ForEach(0..<30) { row in
//                     HStack(spacing: 30) {
//                        ForEach(0..<2) { col in
//                           
//                           GridItem(product: self.items[(row * 3 + col) % self.items.count])
//                              .frame(width: geometry.size.width / 2.0 - 30.0, height: 150.0)
//                           //.frame(width: UIScreen.main.bounds.width / 2 - 30, height: 150)
//                        }
//                     }
//                  }
//                  
//               }
//               .frame(width: 200)
//            }
//         }
//         
//         
//      }
//      //.navigationBarTitle("GeometryReader")
//   }
//}
//
//struct View_GeometryReader_Previews: PreviewProvider {
//   static var previews: some View {
//      NavigationView {
//         View_GeometryReader()
//      }
//   }
//}
