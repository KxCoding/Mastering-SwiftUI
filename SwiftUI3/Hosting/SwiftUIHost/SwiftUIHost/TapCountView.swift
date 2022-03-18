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

import UIKit
import SwiftUI

final class TapCountView: UIView {
    var count = 0 {
        didSet {
            countLabel.text = "\(count)"
        }
    }
    
    let countLabel: UILabel = UILabel()
    let btn = UIButton(type: .custom)
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle(nil, for: .normal)
        btn.addTarget(self, action: #selector(handleTap(_:)), for: .touchUpInside)
        addSubview(btn)
        
        btn.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        btn.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        btn.topAnchor.constraint(equalTo: topAnchor).isActive = true
        btn.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        countLabel.text = "\(count)"
        countLabel.textAlignment = .center
        countLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        addSubview(countLabel)
        
        countLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        countLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        countLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        countLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        backgroundColor = UIColor.systemYellow
    }
    
    @objc func handleTap(_ sender: Any) {
        count += 1
    }
}

