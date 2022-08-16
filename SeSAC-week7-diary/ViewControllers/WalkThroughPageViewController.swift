//
//  WalkThroughPageViewController.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/16.
//

import UIKit

class WalkThroughPageViewController: UIPageViewController {

    var pageViewControllerList: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // rootview backgroundColor
        view.backgroundColor = .magenta
        
        createPageViewController()
        configurePageViewControlelr()
    }
    
    func createPageViewController() {
        let sb = UIStoryboard(name: "WalkThrough", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: FirstViewController.reuseIdentifier) as! FirstViewController
        let vc2 = sb.instantiateViewController(withIdentifier: SecondViewController.reuseIdentifier) as! SecondViewController
        
        pageViewControllerList = [vc1, vc2]
    }
    
    func configurePageViewControlelr() {
        delegate = self
        dataSource = self
        
        guard let first = pageViewControllerList.first else { return }
        
        setViewControllers([first], direction: .forward, animated: true)
    }
}

extension WalkThroughPageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        //현재 페이지뷰컨트롤러에 보이는 뷰컨트롤러의 인덱스 가져오기
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        //이전 인덱스
        let previousIndex = viewControllerIndex - 1
        
        //인덱스 0 이전(-1)은 없으므로 리턴 조건문 작성
        //반환값 옵셔널을 받고있기 때문에 nil이면 런타임 오류가 아니라 페이지가 넘어가지 않음.
        return previousIndex < 0 ? nil : pageViewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        //현재 페이지뷰컨트롤러에 보이는 뷰컨트롤러의 인덱스 가져오기
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        //다음 인덱스
        let nextIndex = viewControllerIndex + 1
        
        //리턴 조건문 작성
        return nextIndex >= pageViewControllerList.count ? nil : pageViewControllerList[nextIndex]
    }
    
//    //page controll : default로 주면 위치 변경등에 제약있음
//    //custom : 다음에..
//    //페이지 변경방식이 페이지컬이면 페이지컨트롤 표기안됨
//
//    //페이지컨트롤의 페이지 몇개 나타낼지
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return pageViewControllerList.count
//    }
//
//    //몇번째 페이지인지
//    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
//        guard let first = viewControllers?.first, let index = pageViewControllerList.firstIndex(of: first) else { return 0 }
//
//        return index
//    }
}
