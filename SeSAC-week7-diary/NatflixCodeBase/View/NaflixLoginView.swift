//
//  NaflixLoginView.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

import SnapKit

class NaflixLoginView: NaflixBaseView {
    
    let naflixLabel: UILabel = {
        let label = UILabel()
        label.text = "NAFLIX"
        label.textColor = NaflixColor.MainColor
        label.font = .systemFont(ofSize: 34, weight: .heavy)
        return label
    }()
    
    let idTextField: UserTextField = {
        let tf = UserTextField()
        tf.grayBackgroundTextField(placeholder: "이메일 주소 또는 전화번호")
        tf.keyboardType = .emailAddress
        return tf
    }()
    
    let pwTextField: UserTextField = {
        let tf = UserTextField()
        tf.grayBackgroundTextField(placeholder: "비밀번호")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    let nicknameTextField: UserTextField = {
        let tf = UserTextField()
        tf.grayBackgroundTextField(placeholder: "닉네임")
        return tf
    }()
    
    let positionTextField: UserTextField = {
        let tf = UserTextField()
        tf.grayBackgroundTextField(placeholder: "위치")
        return tf
    }()
    
    let recommendCodeTextField: UserTextField = {
        let tf = UserTextField()
        tf.grayBackgroundTextField(placeholder: "추천 코드 입력")
        tf.keyboardType = .numberPad
        return tf
    }()
    
    let registerButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("회원가입", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    let moreInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "추가 정보 입력"
        label.textColor = .white
        return label
    }()
    
    let checkSwitch: UISwitch = {
        let view = UISwitch()
        view.onTintColor = NaflixColor.MainColor
        return view
    }()
    
    let stackView: UIStackView = {
        let view = UIStackView()
//        view.axis = .vertical
//        view.distribution = .fillEqually
//        view.alignment = .fill
//        view.spacing = 15
//        view.backgroundColor = .red
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
    [idTextField, pwTextField, nicknameTextField, positionTextField, recommendCodeTextField, registerButton, moreInfoLabel, checkSwitch].forEach { stackView.addSubview($0) }
        [naflixLabel, stackView].forEach { self.addSubview($0) }
    }
    
    override func setConstraints() {
        naflixLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
        }
        
        stackView.snp.makeConstraints { (make) in
            make.centerX.centerY.equalTo(self)
            make.width.equalTo(UIScreen.main.bounds.width - 100)
            make.height.equalTo(UIScreen.main.bounds.height / 2)
        }
        
        idTextField.snp.makeConstraints { make in
            make.width.equalTo(stackView)
        }
        
        pwTextField.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.top.equalTo(idTextField).offset(50)
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.top.equalTo(pwTextField).offset(50)
        }
        
        positionTextField.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.top.equalTo(nicknameTextField).offset(50)
        }
        
        recommendCodeTextField.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.top.equalTo(positionTextField).offset(50)
        }
        
        registerButton.snp.makeConstraints { make in
            make.width.equalTo(stackView)
            make.top.equalTo(recommendCodeTextField).offset(50)
            make.height.equalTo(40)
        }
        
        moreInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(registerButton).offset(60)
            make.leading.equalTo(stackView)
        }
        
        checkSwitch.snp.makeConstraints { make in
            make.top.equalTo(registerButton).offset(60)
            make.trailing.equalTo(stackView)
        }
        
        
    }
}
