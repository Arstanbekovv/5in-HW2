//
//  HW2.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit

class ViewControllerHW2: UIViewController {
    
    
    private var button = UIButton()
    private var text1 = UITextField()
    
    var s = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text1.placeholder = "Введите текст..."
        text1.layer.cornerRadius = 20
        
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        view.addSubview(text1)
        text1.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        text1.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.height.equalTo(70)
            make.width.equalTo(200)
            
        }
        
        
        
        view.addSubview(button)
        button.setTitle("Далее", for: .normal)
        button.backgroundColor =  UIColor(red: 255/255, green: 195/255, blue: 145/255, alpha: 1)
        button.setTitleColor(.systemBlue, for: .normal)
        
        button.layer.cornerRadius = 20
        
        
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
        button.snp.makeConstraints {make in
            make.top.equalTo(text1.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(100)
            
            
        }
        
        
        
        
        
    }
    
    @objc func clickButton(sender: UIButton) {
        
        s = String(text1.text ?? "")
        let b = s.replacingOccurrences(of: ", ", with: "\n", options: .literal, range: nil)
        let controller = SecondViewControllerHW2()
        navigationController?.pushViewController(controller, animated: true)
        controller.label1.text = b
        
    }
}

