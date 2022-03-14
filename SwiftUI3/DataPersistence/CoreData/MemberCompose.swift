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

struct MemberCompose: View {
    let editTarget: MemberEntity?
    
    @State private var name: String = ""
    @State private var age: Int? = nil
    
    @Environment(\.dismiss) var dismiss
    
    func addMember() {
        
    }
    
    func editMember() {
        
    }
    
    var body: some View {
        #if os(iOS)
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                TextField("Age", value: $age, format: .number)
                    .keyboardType(.numberPad)
                    
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        if let _ = editTarget {
                            editMember()
                        } else {
                            addMember()
                        }
                        
                        dismiss()
                    } label: {
                        Text("Save")
                    }
                }
            }
            .navigationTitle(editTarget != nil ? "멤버 수정" : "새 멤버")
        }
        #else
        Form {            
            TextField("Name", text: $name)
                .onAppear {
                    if let editTarget = editTarget {
                        name = editTarget.name ?? ""
                    }
                }
            
            TextField("Age", value: $age, format: .number)
                .onAppear {
                    if let editTarget = editTarget {
                        age = Int(editTarget.age)
                    }
                }
            
            HStack {
                Spacer()
                
                Button("취소") {
                    dismiss()
                }
                
                Button("저장") {
                    if let _ = editTarget {
                        editMember()
                    } else {
                        addMember()
                    }
                    
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        .frame(width: 300)
        #endif
    }
}

struct MemberCompose_Previews: PreviewProvider {
    static var previews: some View {
        MemberCompose(editTarget: nil)
    }
}
