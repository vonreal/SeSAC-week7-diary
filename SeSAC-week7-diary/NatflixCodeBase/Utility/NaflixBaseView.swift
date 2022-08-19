//
//  NaflixBaseView.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class NaflixBaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() { }
    func setConstraints() { }
}
