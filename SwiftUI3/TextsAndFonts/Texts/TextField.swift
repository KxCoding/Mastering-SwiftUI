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

struct TextField_Tutorials: View {
    @State private var email: String = ""
    @State private var password: String = ""    
    @State private var showJoinAlert = false
    @State private var showInputAlert = false
    
    var body: some View {
        Form {
            Section {
                
            }
            
            Section {
                Button {
                    if email.isEmpty {
                        showInputAlert = true
                    } else {
                        showJoinAlert = true
                    }
                } label: {
                    Text("회원가입")
                }
                .frame(maxWidth: .infinity)
                .alert("회원가입", isPresented: $showJoinAlert) {
                    Button {
                        
                    } label: {
                        Text("확인")
                    }
                } message: {
                    Text("계정: \(email)\n비밀번호: \(password)")
                }
                .alert("경고", isPresented: $showInputAlert) {
                    Button {
                        
                    } label: {
                        Text("확인")
                    }
                } message: {
                    Text("이메일을 입력해 주세요")
                }
            }
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Tutorials()
    }
}
