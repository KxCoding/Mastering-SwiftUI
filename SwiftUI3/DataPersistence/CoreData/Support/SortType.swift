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

import Foundation

struct SortType: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let descriptors: [SortDescriptor<MemberEntity>]
    
    static let types = [
        SortType(title: "이름 오름차순(ㄱ~ㅎ)", descriptors: [SortDescriptor(\.name, order: .forward)]),
        SortType(title: "이름 내림차순(ㅎ~ㄱ)", descriptors: [SortDescriptor(\.name, order: .reverse)]),
        SortType(title: "나이 오름차순", descriptors: [SortDescriptor(\.age, order: .forward)]),
        SortType(title: "나이 내림차순", descriptors: [SortDescriptor(\.age, order: .reverse)]),
    ]
}
