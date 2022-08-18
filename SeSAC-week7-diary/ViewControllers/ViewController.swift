//
//  ViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/16.
//

import UIKit
import SeSACFramework

import SnapKit

class ViewController: UIViewController {

    let nameButton: UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.tintColor = .black
        view.backgroundColor = .lightGray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
    }
    
    @objc func nameButtonClicked() {
        
        let vc = ProfileViewController()
        
        vc.saveButtonActionHandler = {
            self.nameButton.setTitle(vc.nameTextField.text, for: .normal)
        }
        
        present(vc, animated: true)
    }
    
    func configure() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }
}

