//
//  grayBackgroundTextFiled.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class UserTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func grayBackgroundTextField(placeholder: String) {
        self.backgroundColor = NaflixColor.TextFieldBackgroundColor
        self.placeholder = placeholder
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor : UIColor.white, .font : UIFont.systemFont(ofSize: 14)])
        self.textColor = .white
        self.textAlignment = .center
        self.borderStyle = .roundedRect
    }
}
