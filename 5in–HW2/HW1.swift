//
//  HW1.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit
class ViewControllerHW1: UIViewController {
    
    private var button = UIButton()
    private var textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        
        
        view.addSubview(textField)
        textField.layer.cornerRadius = 20
        textField.placeholder = "Введите текст..."
        textField.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        textField.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.height.equalTo(70)
            make.width.equalTo(200)
        }
        
        view.addSubview(button)
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(red: 255/255, green: 195/255, blue: 145/255, alpha: 1)
        button.setTitle("Далее", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(nil, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
        button.snp.makeConstraints {make in
            make.top.equalTo(textField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.height.equalTo(80)
            make.width.equalTo(100)
        }
        
        
        
    }
    
    @objc func buttonTapped(sender: UIButton) {
        let controller = SecondViewController()
        controller.label.text = textField.text
        navigationController?.pushViewController(controller, animated: true)
        
        
    }
}
