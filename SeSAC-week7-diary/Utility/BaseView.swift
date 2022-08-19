//
//  BaseVuew.swift
//  SeSAC-week7-diary
//
//  Created by 나지운 on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    // xib 등으로 만날때 무조건 실행됨! 이럴땐 fatalError를 제거해줘야함. 코드일때는 실패
    // 코드베이스나, xib로 할 경우 동작이 할수도 안할수도 있기에 옵셔널로.
    required init?(coder: NSCoder) {
        // super.init(coder: coder)
        fatalError("init(coder:) has not been implemented") // 런타임 오류
    }
    
    func configureUI() { }
    
    func setConstraints() { }
}


// 실습

// requiered initalizer
protocol example {
    init(name: String)
}

class Mobile: example {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Apple: Mobile {
    var wwdc: String
    
    init(wwdc: String) {
        self.wwdc = wwdc
        super.init(name: "맘모스")
    }
    
    required init(name: String) {
        fatalError("init(name:) has not been implemented")
    }
}

let a = Apple(wwdc: "애플")
