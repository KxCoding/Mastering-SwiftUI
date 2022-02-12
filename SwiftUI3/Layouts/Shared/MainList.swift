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

struct MainList: View {
    var body: some View {
        TabView {
            NavigationView {
                List {
                    SupportNavigationLink("HStack") { HStack_Tutorials() }
                    SupportNavigationLink("VStack") { VStack_Tutorials() }
                    SupportNavigationLink("ZStack") { ZStack_Tutorials() }
                    SupportNavigationLink("Lazy Stacks") { LazyStacks() }
                    SupportNavigationLink("Sections") { Sections() }
                    SupportNavigationLink("Spacer") { Spacer_Tutorials() }
                    SupportNavigationLink("Group") { Group_Tutorials() }
                    SupportNavigationLink("ScrollView") { ScrollView_Tutorials() }
                    SupportNavigationLink("Form") { Form_Tutorials() }
                    SupportNavigationLink("Overlay") { Overlay() }
                }
                .listStyle(.automatic)
                .navigationBarTitle("Layouts")
            }
            .tabItem {
                Image(systemName: "square.3.layers.3d.down.right")
                Text("Layouts")
            }
            
            NavigationView {
                List {
                    SupportNavigationLink("Alert") { Alert_Tutorials() }
                    SupportNavigationLink("Confirmation Dialog") { ConfirmationDialog_Tutorials() }
                    SupportNavigationLink("Sheet") { Sheet_Tutorials() }
                    SupportNavigationLink("Popover") { Popover_Tutorials() }
                    SupportNavigationLink("Interactive Dismiss") { InteractiveDismiss() }
                }
                .listStyle(.automatic)
                .navigationBarTitle("Presentations")
            }
            .tabItem {
                Image(systemName: "rectangle.portrait")
                Text("Presentations")
            }
        }
        
    }
}

struct SystemViewList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
