//
//  HW5.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit


class ViewControllerHW5: UIViewController {
    
    var textField = UITextField()
    var button = UIButton()
   
    var string = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        
        textField.placeholder = "Введите текст..."
        textField.textColor = UIColor.white
        textField.layer.cornerRadius = 20
        textField.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        view.addSubview(textField)
        textField.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.height.equalTo(70)
            make.width.equalTo(200)
        }
        
        button.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        button.layer.cornerRadius = 20
        button.setTitle("Далее", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints {make in
            make.top.equalTo(textField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(100)
        }
        
        
    }
    @objc func clickButton(sender: UIButton) {
        
        
        let controller = SecondViewControllerHW5()
                controller.label.text = textField.text
                navigationController?.pushViewController(controller, animated: true)
            
        string = String(textField.text ?? "")
        
        let b = string.count
        
        var w = 0
        
        for i in string {
            if i == " " {
                w += 1
            }
        }
       
        
        controller.label.text = String("В тексте: \n \(b) символов \n \(w + 1) слов \n \(w) пробелов")
       
    }
}
