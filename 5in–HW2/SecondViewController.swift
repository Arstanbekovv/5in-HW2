//
//  SecondViewController.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit

class SecondViewController: UIViewController {
    
    var label = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        
        view.addSubview(label)
        label.layer.cornerRadius = 25
        label.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        
        label.snp.makeConstraints{make in
            make.center.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(70)
        }
    }
}
