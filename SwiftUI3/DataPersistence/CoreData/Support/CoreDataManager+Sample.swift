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
import CoreData

extension CoreDataManager {
    private var isEmpty: Bool {
        do {
            let request = MemberEntity.fetchRequest()
            request.resultType = .countResultType
            let count  = try mainContext.count(for: request)
            return count == 0
        } catch {
            return true
        }
    }
    
    func prepareSampleData() {
        guard isEmpty else { return }
        
        let members = [
            ("나연(Lim Nayeon)", 26), ("정연(Yoo Jeongyeon)", 25), ("모모(Hirai Momo)", 25),
            ("사나(Minatozaki Sana)", 25), ("지효(Park Jihyo)", 25), ("미나(Myoi Mina)", 24),
            ("다현(Kim Dahyun)", 23), ("채영(Son Chaeyoung)", 22), ("쯔위(Chou Tzuyu)", 22)
        ]
        
        members.forEach { member in
            let m = MemberEntity(context: mainContext)
            m.name = member.0
            m.age = Int16(member.1)
        }
        
        do {
            try mainContext.save()
        } catch {
            print(error)
        }
    }
}
