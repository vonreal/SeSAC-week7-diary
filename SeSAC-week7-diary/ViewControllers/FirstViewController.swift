//
//  FirstViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    
    @IBOutlet weak var blackViewWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialLabel.numberOfLines = 0
        tutorialLabel.alpha = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
            일기 씁시다
            잘써 봅시다
        """
        
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            self.animateBlackView()
        }
        
        blackView.backgroundColor = .black
        blackView.alpha = 0

    }
 
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackViewWidth.constant += 250
            self.blackView.alpha = 1
        } completion: { _ in
            print("Complete")
        }
    }
}
