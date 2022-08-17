//
//  CodeViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/17.
//

import UIKit

/*
    공통
    1. 뷰객체 프로퍼티 선언. 클래스의 인스턴스를 생성
    2. 명시적으로 루트뷰에 추가
    3. 크기와 위치 및 속성 정의 -> Frame 기반 한계
 */

class CodeViewController: UIViewController {

    
    let emailTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(emailTextField)
        
        emailTextField.frame = CGRect(x: 50, y: 150, width: UIScreen.main.bounds.width - 100, height: 50)
        emailTextField.borderStyle = .line
        emailTextField.backgroundColor = .lightGray
    }
}
