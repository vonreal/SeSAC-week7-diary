//
//  UIViewController+Extension.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/18.
//

import UIKit

extension UIViewController {
    
//    enum transition {
//        case .present,
//        case .push
//    }
    
    func transitionViewController<T: UIViewController>(storyboard: String, viewController: T) {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: String(describing: viewController)) 
        
        self.present(vc, animated: true)
    }
}
