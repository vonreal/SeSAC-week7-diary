//
//  NaflixMainView.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

import SnapKit

class NaflixMainView: NaflixBaseView {
    
    let backgroundPosterImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "미니언즈2")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let backgroundCoverImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "background")
        view.contentMode = .scaleToFill
        return view
    }()
    
    let naflixLogoButton: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleButton(title: "N", fontSize: 50, weight: .heavy)
    }()
    
    let tvProgramButton: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleButton(title: "TV 프로그램", fontSize: 16, weight: .bold)
    }()
    
    let movieButton: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleButton(title: "영화", fontSize: 16, weight: .bold)
    }()
    
    let myChoiceContentButton: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleButton(title: "내가 찜한 콘텐츠", fontSize: 16, weight: .bold)
    }()
    
    let playButton: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteBackgroundTitleWithImageButton(image: NaflixImage.play, title: "재생", fontSize: 14, imagePlacement: .leading)
    }()
    
    let myChocieContentButtonWithIcon: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleWithImageButton(image: NaflixImage.check, title: "내가 찜한 컨텐츠", fontSize: 12, imagePlacement: .top)
    }()
    
    let infoButtonWithIcon: WhiteFontUIButton = {
        let btn = WhiteFontUIButton()
        return btn.whiteTitleWithImageButton(image: NaflixImage.info, title: "정보", fontSize: 12, imagePlacement: .top)
    }()
    
    let previewTextLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "미리보기"
        lbl.textColor = .white
        lbl.font = .boldSystemFont(ofSize: 20)
        return lbl
    }()
    
    let preview1PosterImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "셰이프오브워터"))
        img.previewPosterImageView()
        return img
    }()
    
    let preview1LogoImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "판의 미로 로고")
        img.contentMode = .scaleToFill
        return img
    }()
    
    let preview1PosterCoverImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "background"))
        img.previewPosterImageView()
        return img
    }()
    
    let preview2PosterImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "헤어질 결심"))
        img.previewPosterImageView()
        return img
    }()
    
    let preview2LogoImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "판의 미로 로고")
        return img
    }()
    
    let preview2PosterCoverImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "background"))
        img.previewPosterImageView()
        return img
    }()
    
    let preview3PosterImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "판의 미로"))
        img.previewPosterImageView()
        return img
    }()
    
    let preview3LogoImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "판의 미로 로고")
        return img
    }()
    
    let preview3PosterCoverImageView: PreviewUIImageView = {
        let img = PreviewUIImageView(image: UIImage(named: "background"))
        img.previewPosterImageView()
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func configureUI() {
        [backgroundPosterImageView, backgroundCoverImageView, naflixLogoButton, tvProgramButton, movieButton, myChoiceContentButton, playButton, myChocieContentButtonWithIcon, infoButtonWithIcon, previewTextLabel, preview1PosterImageView, preview1PosterCoverImageView, preview1LogoImageView, preview2PosterImageView, preview2PosterCoverImageView, preview2LogoImageView, preview3PosterImageView, preview3PosterCoverImageView, preview3LogoImageView].forEach { self.addSubview($0) }
        self.backgroundColor = .black
    }
    
    override func setConstraints() {
        backgroundPosterImageView.snp.makeConstraints { make in
            make.height.equalTo(UIScreen.main.bounds.height - 250)
            make.width.equalTo(UIScreen.main.bounds.width)
            make.top.equalTo(0)
        }
        
        backgroundCoverImageView.snp.makeConstraints { make in
            make.height.equalTo(UIScreen.main.bounds.height - 250)
            make.width.equalTo(UIScreen.main.bounds.width)
            make.top.equalTo(0)
        }
        
        naflixLogoButton.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalTo(10)
            make.width.height.equalTo(60)
        }
        
        tvProgramButton.snp.makeConstraints { make in
            make.bottom.equalTo(naflixLogoButton).offset(-10)
            make.leading.equalTo(naflixLogoButton).offset(80)
        }
        
        myChoiceContentButton.snp.makeConstraints { make in
            make.bottom.equalTo(naflixLogoButton).offset(-10)
            make.trailing.equalTo(self).offset(-20)
        }
        
        movieButton.snp.makeConstraints { make in
            make.bottom.equalTo(naflixLogoButton).offset(-10)
            make.trailing.equalTo(tvProgramButton).offset(60)
            make.leading.equalTo(myChoiceContentButton).offset(-60)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.bottom.equalTo(backgroundPosterImageView).offset(-30)
        }
        
        myChocieContentButtonWithIcon.snp.makeConstraints { make in
            make.centerY.equalTo(playButton)
            make.leading.equalTo(20)
        }
        
        infoButtonWithIcon.snp.makeConstraints { make in
            make.centerY.equalTo(playButton)
            make.trailing.equalTo(-50)
        }
        
        previewTextLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundPosterImageView.snp_bottomMargin).offset(20)
            make.leading.equalTo(10)
        }
        
        let width = UIScreen.main.bounds.width / 3 - 20
        preview1PosterImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(previewTextLabel.snp_bottomMargin).offset(15)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }
        
        preview1LogoImageView.snp.makeConstraints { make in
            make.centerX.equalTo(preview1PosterImageView)
            make.bottom.equalTo(preview1PosterImageView).offset(15)
            make.width.equalTo(preview1PosterImageView)
            make.height.equalTo(width / 2)
        }
        
        preview1PosterCoverImageView.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(previewTextLabel.snp_bottomMargin).offset(15)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }
        
        preview2PosterImageView.snp.makeConstraints { make in
            make.centerY.equalTo(preview1PosterImageView)
            make.height.equalTo(width)
            make.width.equalTo(width)
            make.leading.equalTo(10)
        }
        
        preview2LogoImageView.snp.makeConstraints { make in
            make.centerX.equalTo(preview2PosterImageView)
            make.bottom.equalTo(preview2PosterImageView).offset(15)
            make.width.equalTo(preview2PosterImageView)
            make.height.equalTo(width / 2)
        }
        
        preview2PosterCoverImageView.snp.makeConstraints { make in
            make.centerX.equalTo(preview2PosterImageView)
            make.top.equalTo(previewTextLabel.snp_bottomMargin).offset(15)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }
        
        preview3PosterImageView.snp.makeConstraints { make in
            make.centerY.equalTo(preview1PosterImageView)
            make.height.equalTo(width)
            make.width.equalTo(width)
            make.trailing.equalTo(-10)
        }
        
        preview3LogoImageView.snp.makeConstraints { make in
            make.centerX.equalTo(preview3PosterImageView)
            make.bottom.equalTo(preview3PosterImageView).offset(15)
            make.width.equalTo(preview3PosterImageView)
            make.height.equalTo(width / 2)
        }
        
        preview3PosterCoverImageView.snp.makeConstraints { make in
            make.centerX.equalTo(preview3PosterImageView)
            make.top.equalTo(previewTextLabel.snp_bottomMargin).offset(15)
            make.width.equalTo(width)
            make.height.equalTo(width)
        }

    }
}
