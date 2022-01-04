//
//  SecondViewControllerHW5.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit


class SecondViewControllerHW5: UIViewController {
    
    
       var label = UILabel()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview().offset(-100)
        }
            
        }
    }

