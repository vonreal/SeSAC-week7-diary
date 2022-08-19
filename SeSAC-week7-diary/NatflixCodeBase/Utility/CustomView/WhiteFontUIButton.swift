//
//  WhiteFontButton.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class WhiteFontUIButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func whiteTitleButton(title: String, fontSize: CGFloat, weight: UIFont.Weight) -> WhiteFontUIButton {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init(title)
        titleAttr.font = .systemFont(ofSize: fontSize, weight: weight)
        config.attributedTitle = titleAttr
        config.baseForegroundColor = .white
        config.titlePadding = 0
        return WhiteFontUIButton(configuration: config)
    }
    
    func whiteTitleWithImageButton(image: UIImage, title: String, fontSize: CGFloat, imagePlacement: NSDirectionalRectEdge ) -> WhiteFontUIButton {
        var config = UIButton.Configuration.plain()
        var titleAttr = AttributedString.init(title)
        let imageConfig = UIImage.SymbolConfiguration(pointSize: 12)
        
        titleAttr.font = .systemFont(ofSize: fontSize, weight: .regular)
        config.attributedTitle = titleAttr
        
        config.baseForegroundColor = .white
        
        config.preferredSymbolConfigurationForImage = imageConfig
        config.image = image
        config.imagePadding = 8
        config.imagePlacement = imagePlacement
        return WhiteFontUIButton(configuration: config)
    }
    
    func whiteBackgroundTitleWithImageButton(image: UIImage, title: String, fontSize: CGFloat, imagePlacement: NSDirectionalRectEdge) -> WhiteFontUIButton {
        var config = UIButton.Configuration.filled()
        var titleAttr = AttributedString.init(title)
        
        titleAttr.font = .systemFont(ofSize: fontSize, weight: .regular)
        config.attributedTitle = titleAttr
        
        config.baseBackgroundColor = .white
        config.baseForegroundColor = .black
        
        
        config.image = image
        config.imagePadding = 8
        config.imagePlacement = imagePlacement
        
        config.contentInsets = NSDirectionalEdgeInsets(top: 6, leading: 40, bottom: 6, trailing: 45)
        return WhiteFontUIButton(configuration: config)
    }
}
