//
//  ViewController.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    private var HomeWork1 = UIButton()
    private var HomeWork2 = UIButton()
    private var HomeWork3 = UIButton()
    private var HomeWork4 = UIButton()
    private var HomeWork5 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 26/255, green: 229/255, blue: 240/255, alpha: 1)
        HomeWork1.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        HomeWork2.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        HomeWork3.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        HomeWork4.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        HomeWork5.backgroundColor = UIColor(red: 237/255, green: 154/255, blue: 102/255, alpha: 1)
        
       
        HomeWork1.setTitleColor(.white, for: .normal)
        HomeWork1.layer.cornerRadius = 20
        HomeWork1.setTitle ("HomeWork-1", for: .normal)
        HomeWork1.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(HomeWork1)
        HomeWork1.snp.makeConstraints{make in
        make.centerX.equalToSuperview()
        make.width.equalTo(200)
        make.height.equalTo(60)
        make.top.equalToSuperview().offset(130)
        }
        
        HomeWork2.setTitleColor(.white, for: .normal)
        HomeWork2.layer.cornerRadius = 20
        HomeWork2.setTitle ("HomeWork-2", for: .normal)
        HomeWork2.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(HomeWork2)
        HomeWork2.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(60)
            make.top.equalTo(HomeWork1.snp.bottom).offset(40)
        }
        
        HomeWork3.setTitleColor(.white, for: .normal)
        HomeWork3.layer.cornerRadius = 20
        HomeWork3.setTitle ("HomeWork-3", for: .normal)
        HomeWork3.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(HomeWork3)
        HomeWork3.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(60)
            make.top.equalTo(HomeWork2.snp.bottom).offset(40)
        }
        
        HomeWork4.setTitleColor(.white, for: .normal)
        HomeWork4.layer.cornerRadius = 20
        HomeWork4.setTitle ("HomeWork-4", for: .normal)
        HomeWork4.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(HomeWork4)
        HomeWork4.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(60)
            make.top.equalTo(HomeWork3.snp.bottom).offset(40)
        }
        
        HomeWork5.setTitleColor(.white, for: .normal)
        HomeWork5.layer.cornerRadius = 20
        HomeWork5.setTitle ("HomeWork-5", for: .normal)
        HomeWork5.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        view.addSubview(HomeWork5)
        HomeWork5.snp.makeConstraints{make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(60)
            make.top.equalTo(HomeWork4.snp.bottom).offset(40)
        }
    }
    
    
    @objc private func tapButton(sender: UIButton){
        if sender.titleLabel?.text == "HomeWork-1"{
            navigationController?.pushViewController(ViewControllerHW1(), animated: true)
        }else if sender.titleLabel?.text == "HomeWork-2"{
            navigationController?.pushViewController(ViewControllerHW2(), animated: true)
        }else if sender.titleLabel?.text == "HomeWork-3"{
            navigationController?.pushViewController(ViewControllerHW3(), animated: true)
        }else if sender.titleLabel?.text == "HomeWork-4"{
            navigationController?.pushViewController(ViewControllerHW4(), animated: true)
        }else if sender.titleLabel?.text == "HomeWork-5"{
            navigationController?.pushViewController(ViewControllerHW5(), animated: true)
    
    }
            

}
}



