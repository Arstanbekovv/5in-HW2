//
//  SecondViewControllerHW3.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit

class SecondViewControllerHW3: UIViewController {
     var label2 = UILabel()
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        label2.numberOfLines = 0
        label2.lineBreakMode = .byWordWrapping
        
        view.addSubview(label2)
        label2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview().offset(-100)
        }
      }
    }

// Aziz, Azamat, Doolot, Ruslan, Kylym, Eldar

