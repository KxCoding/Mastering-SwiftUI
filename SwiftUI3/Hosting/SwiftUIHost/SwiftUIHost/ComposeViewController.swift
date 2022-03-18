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

final class ComposeViewController: UIViewController {
    
    @IBOutlet weak var contentTextView: UITextView!
    
    var source: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        source = contentTextView.text
        contentTextView.delegate = self
    }
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        
        print(parent.self)
        print(parent?.navigationController.self)
        print(parent?.navigationController?.parent.self)
        
        parent?.navigationController?.parent?.presentationController?.delegate = self
    }
}



extension ComposeViewController: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        isModalInPresentation = textView.text != source
    }
}



extension ComposeViewController: UIAdaptivePresentationControllerDelegate {
    func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool {
        return !isModalInPresentation
    }
    
    func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        let alert = UIAlertController(title: "알림", message: "편집한 내용을 버리고 화면을 닫을까요?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "닫기", style: .destructive) { _ in
            self.dismiss(animated: true)
        }
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "계속 편집", style: .default)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}
