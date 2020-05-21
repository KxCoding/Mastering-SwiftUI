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

struct SystemViewList: View {
   var body: some View {
      List {
         Section {
            SupportNavigationLink("HStack") { View_HStack() }
            SupportNavigationLink("VStack") { View_VStack() }
            SupportNavigationLink("ZStack") { View_ZStack() }
            SupportNavigationLink("Spacer") { View_Spacer() }
         }
         
         Section {
            SupportNavigationLink("Button") { View_Button() }
            SupportNavigationLink("Toggle") { View_Toggle() }
            SupportNavigationLink("Date Picker Style") { View_DatePickerStyle() }
            SupportNavigationLink("Date Picker") { View_DatePicker() }
            SupportNavigationLink("Picker") { View_Picker() }
            SupportNavigationLink("Stepper") { View_Stepper() }
            SupportNavigationLink("Slider") { View_Slider() }
         }
         
         Section {
            SupportNavigationLink("Alert") { View_Alert() }
            SupportNavigationLink("Action Sheet") { View_ActionSheet() }
            SupportNavigationLink("Group") { View_Group() }
            SupportNavigationLink("Form") { View_Form() }
         }
      }
      .listStyle(GroupedListStyle())
      .navigationBarTitle("System Views")
   }
}

struct SystemViewList_Previews: PreviewProvider {
   static var previews: some View {
      SystemViewList()
   }
}
