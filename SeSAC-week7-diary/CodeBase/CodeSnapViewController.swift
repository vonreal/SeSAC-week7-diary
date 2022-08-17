//
//  CodeSnapViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/17.
//

import UIKit

import SnapKit

class CodeSnapViewController: UIViewController {

    let photoImageView: UIImageView = {
        let view = UIImageView()
        
        view.backgroundColor = .lightGray
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    // 뷰 객체를 클로저 형태로 반환해서 고정되는 스타일을 인스턴스 생성할때 설정해준다. <뷰디드로드보다 먼저 실행된다.>
    let titleTextField: UITextField = {
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }()
    
    let dateTextField: UITextField = {
        let view = UITextField()
        
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "날짜를 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
       
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
                
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach { view.addSubview($0) }
        
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(view).multipliedBy(0.35)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        //         for - in(한번씩 순회한다) vs forEach(고차함수) -> 과제
        //        view.addSubview(photoImageView)
        //        view.addSubview(titleTextField)
        //        photoImageView.translatesAutoresizingMaskIntoConstraints = false -> snapKit을 사용하면 생략가능(내부적으로 구현되어있음)
    }
}
