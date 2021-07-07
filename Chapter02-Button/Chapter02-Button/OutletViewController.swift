//
//  OutletViewController.swift
//  Chapter02-Button
//
//  Created by 혜리 on 2021/07/07.
//

import UIKit

class OutletViewController: UIViewController {
    
    // 멤버 변수 Subject를 선언한다.
    var subject: UILabel!
    
    override func viewDidLoad() {
        // 레이블 객체를 추가하고 영역을 정의한다.
        self.subject = UILabel()
        self.subject.frame = CGRect(x: 50, y:150, width: 100, height: 30)
        
        // subject 레이블을 루트 뷰에 추가한다.
        self.view.addSubview(subject)
    }
    @objc func sayHello(_ sender: Any) {
        self.subject.text = "GoobBye~!, IB!"
    }
}
