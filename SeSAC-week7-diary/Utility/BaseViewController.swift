//
//  BaseViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() { }
    
    func showAlertMessage(title: String, button: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: button, style: .cancel)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
