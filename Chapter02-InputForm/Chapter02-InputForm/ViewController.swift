//
//  ViewController.swift
//  Chapter02-InputForm
//
//  Created by 혜리 on 2021/07/07.
//

import UIKit

class ViewController: UIViewController {
    var paramEmail: UITextField! // 이메일 입력 필드
    var paramUpdate: UISwitch! // 스위치 객체
    var paramInterval: UIStepper! // 스테퍼
    
    override func viewDidLoad() {
        // 1. 내비게이션 바 타이틀을 입력한다.
        self.navigationItem.title = "설정"
        
        initEmailLabel()
        
        initUpdateLabel()
        
        initIntervalLabel()
        
        initUpdateEmailField()
        
        initUpdateSwitch()
        
        initUpdateIntervalStepper()
    }

 
fileprivate func initEmailLabel() {
    // 2. 이메일 레이블을 생성하고 영역과 기본 문구를 설정한다.
    let lblEmail = UILabel()
    lblEmail.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
    lblEmail.text = "이메일"
    
    // 3. 레이블의 폰트를 설정한다.
    lblEmail.font = UIFont.systemFont(ofSize: 14)
    
    // 4. 레이블을 루트 뷰에 추가한다.
    self.view.addSubview(lblEmail)
}

fileprivate func initUpdateLabel() {
    // 자동갱신 레이블을 생성하고 루트 뷰에 추가한다.
    let lblUpdate = UILabel()
    lblUpdate.frame = CGRect(x: 30, y: 150, width: 100, height: 30)
    lblUpdate.text = "자동갱신"
    lblUpdate.font = UIFont.systemFont(ofSize: 14)
    
    self.view.addSubview(lblUpdate)
}

fileprivate func initIntervalLabel() {
    // 갱신주기 레이블을 생성하고 루트 뷰에 추가한다.
    let lblInterval = UILabel()
    lblInterval.frame = CGRect(x: 30, y: 200, width: 100, height: 30)
    lblInterval.text = "갱신주기"
    lblInterval.font = UIFont.systemFont(ofSize: 14)
    
    self.view.addSubview(lblInterval)
}

fileprivate func initUpdateEmailField() {
    // 이메일 입력을 위한 텍스트 필드를 추가한다.
    self.paramEmail = UITextField()
    self.paramEmail.frame = CGRect(x: 120, y: 100, width: 220, height: 30)
    self.paramEmail.font = UIFont.systemFont(ofSize: 13)
    self.paramEmail.borderStyle = .roundedRect
    
    self.view.addSubview(self.paramEmail)
}

fileprivate func initUpdateSwitch() {
    // 스위치 객체를 생성한다.
    self.paramUpdate = UISwitch()
    self.paramUpdate.frame = CGRect(x: 120, y: 150, width: 50, height: 30)
    
    // 스위치가 on 되어있는 상태를 기본값으로 설정한다.
    self.paramUpdate.setOn(true, animated: false)
    
    self.view.addSubview(self.paramUpdate)
}

fileprivate func initUpdateIntervalStepper() {
    // 갱신 주기를 위한 스테퍼를 추가한다.
    self.paramInterval = UIStepper()
    
    self.paramInterval.frame = CGRect(x: 120, y: 200, width: 50, height: 30)
    self.paramInterval.minimumValue = 0 // 1. 스테퍼가 가질 수 있는 최소값
    self.paramInterval.maximumValue = 100 // 2. 스테퍼가 가질 수 있는 최대값
    self.paramInterval.stepValue = 1 // 3. 스테퍼의 값 변경 단위
    self.paramInterval.value = 0 // 4. 초기값 설정
    
    self.view.addSubview(self.paramInterval)
}


}
