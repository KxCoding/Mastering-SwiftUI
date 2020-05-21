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

struct EditMode: View {
   @State private var items = AppleProduct.sampleList  // Stete 삭제
   
   var body: some View {
      VStack {
//         List(items) { item in
//            Text(item.name)
//         }
         
         List {
            ForEach(items) { item in // List 안에 ForEach를 임베드 해야 함
               Text(item.name)
            }
            .onDelete(perform: { (rows) in
               self.items.remove(atOffsets: rows)
            })
            .onMove(perform: move)
         }
      }
      .navigationBarTitle("Edit Mode")
         //
      .navigationBarItems(trailing: EditButton())
      //
   }
   
   //
   func move(from: IndexSet, to: Int) {
      items.move(fromOffsets: from, toOffset: to)
   }
   //
}

struct EditMode_Previews: PreviewProvider {
   static var previews: some View {
      NavigationView {
         EditMode()
      }
   }
}
