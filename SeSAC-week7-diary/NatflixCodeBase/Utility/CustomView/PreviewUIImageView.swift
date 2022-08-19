//
//  PreviewImageView.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class PreviewUIImageView: UIImageView {
    
    override init(image: UIImage?) {
        super.init(image: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func previewPosterImageView() {
        let width = UIScreen.main.bounds.width / 3 - 20
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = width / 2
        self.contentMode = .scaleAspectFill
        self.clipsToBounds = true
    }
    
//    func coverImageView() {
//        let view = UIImageView()
//        view.image = UIImage(named: "background")
//        view.contentMode = .scaleToFill
//        view.backgroundColor = .red
//        self.addSubview(view)
//    }
}
