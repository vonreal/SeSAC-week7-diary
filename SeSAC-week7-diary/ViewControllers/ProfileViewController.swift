//
//  ProfileViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/18.
//

import UIKit

import SnapKit

class ProfileViewController: UIViewController {
    
    let saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("저장", for: .normal)
        view.tintColor = .black
        view.backgroundColor = .lightGray
        return view
    }()
    
    let nameTextField: UITextField = {
        let view = UITextField()
        
        view.placeholder = "이름을 입력해주세요."
        view.backgroundColor = .brown
        view.textColor = .white
        return view
    }()
    
    var saveButtonActionHandler: ((String) -> ())?
    
    @objc func saveButtonClicked() {
        
//        1. 클로저 사용해서 값 전달
//        값 전달 기능 실행 => 클로저 구문 활용
//        saveButtonActionHandler?(nameTextField.text!)
        
//        2. Notification 사용해서 값 전달
        NotificationCenter.default.post(name: Notification.Name("saveButtonNotification"), object: nil, userInfo: ["name": nameTextField.text!, "value": 123456])
        
        // 화면 Dismiss
        dismiss(animated: true)
    }
    
    func configure() {
        [saveButton, nameTextField].forEach { view.addSubview($0) }
        
        saveButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.top.equalTo(40)
            make.leading.trailing.equalTo(view).inset(20)
            make.height.equalTo(50)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        view.backgroundColor = .white
        
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
    }

}
