//
//  CodeSnap2ViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/17.
//

import UIKit

import SnapKit

class CodeSnap2ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView].forEach{ view.addSubview($0) }
        
        blackView.addSubview(yellowView)
        
        // containerview와 스택뷰는 어떻게 할 수 있는지!
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        // RTL(right-to-left) https://developer.apple.com/design/human-interface-guidelines/foundations/right-to-left/
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50) //.offset
        }
        
        yellowView.snp.makeConstraints { make in
            make.edges.equalTo(blackView).inset(10)
        }
    }
}
