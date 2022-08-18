//
//  KakaoViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/18.
//

import UIKit

import SnapKit

class KakaoViewController: UIViewController {

    let profileBackgroundImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "macaroon")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let tintView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0, alpha: 0.5)
        return view
    }()
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "icecream")
        view.layer.cornerRadius = 35
        view.clipsToBounds = true
        return view
    }()
    
    let profileNameLabel: UILabel = {
        let view = UILabel()
        view.text = "내이름"
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 19)
        return view
    }()
    
    let profileContentLabel: UILabel = {
        let view = UILabel()
        view.text = "안녕하세요"
        view.textColor = .white
        view.font = .systemFont(ofSize: 16)
        return view
    }()
    
    let closeButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let giftButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "a.circle"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let gameButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "b.circle"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let settingButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "c.circle"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor(white: 0.8, alpha: 0.2).cgColor
        return view
    }()
    
    let selfChatButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "text.bubble.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let selfChatLabel: UILabel = {
        let view = UILabel()
        view.text = "나와의 채팅"
        view.textColor = .white
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    let profileEditButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "pencil.circle.fill"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let profileEditLabel: UILabel = {
        let view = UILabel()
        view.text = "프로필 편집"
        view.textColor = .white
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    let kakaoStoryButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "hourglass.bottomhalf.filled"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let kakaoStoryLabel: UILabel = {
        let view = UILabel()
        view.text = "카카오스토리"
        view.textColor = .white
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    func configure() {
        [profileBackgroundImageView, closeButton, giftButton, gameButton, settingButton, profileImageView, profileNameLabel, profileContentLabel, lineView, selfChatButton, profileEditButton, kakaoStoryButton, selfChatLabel, profileEditLabel, kakaoStoryLabel].forEach { view.addSubview($0) }
        
        profileBackgroundImageView.snp.makeConstraints { make in
            make.width.height.equalTo(view)
        }
        
        profileBackgroundImageView.addSubview(tintView)
        
        tintView.snp.makeConstraints { make in
            make.width.height.equalTo(view)
        }
        
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.leading.equalTo(20)
            make.width.equalTo(44)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.trailing.equalTo(-20)
            make.width.equalTo(44)
        }
        
        gameButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.trailing.equalTo(settingButton).offset(-30)
            make.width.equalTo(44)
        }
        
        giftButton.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.trailing.equalTo(gameButton).offset(-30)
            make.width.equalTo(44)
        }
        
        selfChatButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.leading.equalTo(80)
            make.height.equalTo(50)
        }
        
        selfChatLabel.snp.makeConstraints { make in
            make.top.equalTo(selfChatButton).offset(50)
            make.centerX.equalTo(selfChatButton)
        }
        
        profileEditButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.centerX.equalTo(view)
            make.height.equalTo(50)
        }
        
        profileEditLabel.snp.makeConstraints { make in
            make.top.equalTo(profileEditButton).offset(50)
            make.centerX.equalTo(profileEditButton)
        }
        
        kakaoStoryButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-80)
            make.trailing.equalTo(-80)
            make.height.equalTo(50)
        }
        
        kakaoStoryLabel.snp.makeConstraints { make in
            make.top.equalTo(kakaoStoryButton).offset(50)
            make.centerX.equalTo(kakaoStoryButton)
        }
        
        lineView.snp.makeConstraints { make in
            make.bottom.equalTo(profileEditButton).offset(-80)
            make.width.equalTo(view)
            make.height.equalTo(1)
        }
        
        profileContentLabel.snp.makeConstraints { make in
            make.bottom.equalTo(lineView).offset(-40)
            make.centerX.equalTo(view)
        }
        
        profileNameLabel.snp.makeConstraints { make in
            make.bottom.equalTo(profileContentLabel).offset(-40)
            make.centerX.equalTo(view)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.bottom.equalTo(profileNameLabel).offset(-30)
            make.centerX.equalTo(view)
            make.width.height.equalTo(100)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}
