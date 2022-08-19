//
//  NaflixLoginViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class NaflixLoginViewController: NaflixBaseViewController {
    
    let mainView = NaflixLoginView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.registerButton.addTarget(self, action: #selector(registerButtonClicked), for: .touchUpInside)
    }
    
    @objc func registerButtonClicked() {
        view.endEditing(true)
        if ((mainView.idTextField.text?.isEmpty) != nil) {
            mainView.idTextField.attributedPlaceholder = NSAttributedString(string: "필수 입력란입니다.", attributes: [.foregroundColor : UIColor.red, .font : UIFont.systemFont(ofSize: 14)])
        }
        
        if mainView.pwTextField.text != nil {
            if (mainView.pwTextField.text!.count) < 5 {
                mainView.pwTextField.text = nil
                mainView.pwTextField.attributedPlaceholder = NSAttributedString(string: "6자리 이상 입력해주세요.", attributes: [.foregroundColor : UIColor.red, .font : UIFont.systemFont(ofSize: 14)])
            } else {
                mainView.pwTextField.attributedPlaceholder = NSAttributedString(string: "필수 입력란입니다.", attributes: [.foregroundColor : UIColor.red, .font : UIFont.systemFont(ofSize: 14)])
            }
        }
        
        if let tempNum = mainView.recommendCodeTextField.text {
            if Int(tempNum) == nil && tempNum.count > 0 {
                mainView.recommendCodeTextField.text = nil
                mainView.recommendCodeTextField.attributedPlaceholder = NSAttributedString(string: "숫자만 입력 가능합니다.", attributes: [.foregroundColor : UIColor.red, .font : UIFont.systemFont(ofSize: 14)])
            }
        }
        
        let vc = NaflixMainViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
