//
//  MainViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class NaflixMainViewController: NaflixBaseViewController {
    
    let mainView = NaflixMainView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
