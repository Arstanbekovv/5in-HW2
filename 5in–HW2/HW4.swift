//
//  HW4.swift
//  5in–HW2
//
//  Created by Aziz on 4/1/22.
//

import Foundation
import SnapKit


class ViewControllerHW4: UIViewController {
    
    
    private var backView = UIView()
    
    private var line1 = UIView()
    private var line2 = UIView()
    private var line3 = UIView()
    private var line4 = UIView()
    private var line5 = UIView()
    
    
    private var zero     = UIButton(type: .system)
    private var one      = UIButton(type: .system)
    private var two      = UIButton(type: .system)
    private var three    = UIButton(type: .system)
    private var four     = UIButton(type: .system)
    private var five     = UIButton(type: .system)
    private var six      = UIButton(type: .system)
    private var seven    = UIButton(type: .system)
    private var eight    = UIButton(type: .system)
    private var nine     = UIButton(type: .system)
    
    private var clear    = UIButton(type: .system)
    private var negative = UIButton(type: .system)
    private var percent  = UIButton(type: .system)
    private var divide = UIButton(type: .system)
    private var multiplication = UIButton(type: .system)
    private var minus    = UIButton(type: .system)
    private var plus     = UIButton(type: .system)
    private var fraction = UIButton(type: .system)
    private var result   = UIButton(type: .system)
    
    private var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .black
        
        view.addSubview(backView)
        backView.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview().inset(30)
            make.height.equalToSuperview().dividedBy(1.65)
        }
        
        backView.addSubview(line1)
        line1.snp.makeConstraints{make in
            make.leading.bottom.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(5)
        }
        backView.addSubview(line2)
        line2.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(line1.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        backView.addSubview(line3)
        line3.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(line2.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        backView.addSubview(line4)
        line4.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(line3.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        backView.addSubview(line5)
        line5.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(line4.snp.top)
            make.height.equalToSuperview().dividedBy(5)
        }
        
        
        line1.addSubview(zero)
        zero.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
        
        line1.addSubview(fraction)
        fraction.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(zero.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line1.addSubview(result)
        result.snp.makeConstraints{make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(fraction.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        
        
        
        line2.addSubview(one)
        one.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(two)
        two.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(one.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(three)
        three.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(two.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line2.addSubview(plus)
        plus.snp.makeConstraints{make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(three.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        
        
        
        line3.addSubview(four)
        four.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(five)
        five.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(four.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(six)
        six.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(five.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line3.addSubview(minus)
        minus.snp.makeConstraints{make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(six.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        
        
        
        line4.addSubview(seven)
        seven.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(eight)
        eight.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(seven.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(nine)
        nine.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(eight.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line4.addSubview(multiplication)
        multiplication.snp.makeConstraints{make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(nine.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        
        
        
        
        line5.addSubview(clear)
        clear.snp.makeConstraints{make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(negative)
        negative.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(clear.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(percent)
        percent.snp.makeConstraints{make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(negative.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        line5.addSubview(divide)
        divide.snp.makeConstraints{make in
            make.top.trailing.bottom.equalToSuperview()
            make.leading.equalTo(percent.snp.trailing)
            make.width.equalToSuperview().dividedBy(4)
        }
        
        
        
        view.addSubview(label)
        label.snp.makeConstraints{make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(120)
            make.bottom.equalTo(backView.snp.top).offset(-10)
        }
        
        
        
        zero.backgroundColor = .darkGray
        zero.setTitle("0", for: .normal)
        zero.setTitleColor(.white, for: .normal)
        zero.layer.cornerRadius = (view.frame.width * 0.127)
        zero.titleLabel?.font = .systemFont(ofSize: 30)
        
        fraction.backgroundColor = .darkGray
        fraction.setTitle(",", for: .normal)
        fraction.setTitleColor(.white, for: .normal)
        fraction.layer.cornerRadius = (view.frame.width * 0.127)
        fraction.titleLabel?.font = .systemFont(ofSize: 30)
        
        result.backgroundColor = .orange
        result.setTitle("=", for: .normal)
        result.setTitleColor(.white, for: .normal)
        result.layer.cornerRadius = (view.frame.width * 0.127)
        result.titleLabel?.font = .systemFont(ofSize: 35)
        
        one.backgroundColor = .darkGray
        one.setTitle("1", for: .normal)
        one.setTitleColor(.white, for: .normal)
        one.layer.cornerRadius = (view.frame.width * 0.127)
        one.titleLabel?.font = .systemFont(ofSize: 30)
        
        two.backgroundColor = .darkGray
        two.setTitle("2", for: .normal)
        two.setTitleColor(.white, for: .normal)
        two.layer.cornerRadius = (view.frame.width * 0.127)
        two.titleLabel?.font = .systemFont(ofSize: 30)
        
        three.backgroundColor = .darkGray
        three.setTitle("3", for: .normal)
        three.setTitleColor(.white, for: .normal)
        three.layer.cornerRadius = (view.frame.width * 0.127)
        three.titleLabel?.font = .systemFont(ofSize: 30)
        
        plus.backgroundColor = .orange
        plus.setTitle("+", for: .normal)
        plus.setTitleColor(.white, for: .normal)
        plus.layer.cornerRadius = (view.frame.width * 0.127)
        plus.titleLabel?.font = .systemFont(ofSize: 35)
        
        four.backgroundColor = .darkGray
        four.setTitle("4", for: .normal)
        four.setTitleColor(.white, for: .normal)
        four.layer.cornerRadius = (view.frame.width * 0.127)
        four.titleLabel?.font = .systemFont(ofSize: 30)
        
        five.backgroundColor = .darkGray
        five.setTitle("5", for: .normal)
        five.setTitleColor(.white, for: .normal)
        five.layer.cornerRadius = (view.frame.width * 0.127)
        five.titleLabel?.font = .systemFont(ofSize: 30)
        
        six.backgroundColor = .darkGray
        six.setTitle("6", for: .normal)
        six.setTitleColor(.white, for: .normal)
        six.layer.cornerRadius = (view.frame.width * 0.127)
        six.titleLabel?.font = .systemFont(ofSize: 30)
        
        minus.backgroundColor = .orange
        minus.setTitle("–", for: .normal)
        minus.setTitleColor(.white, for: .normal)
        minus.layer.cornerRadius = (view.frame.width * 0.127)
        minus.titleLabel?.font = .systemFont(ofSize: 35)
        
        seven.backgroundColor = .darkGray
        seven.setTitle("7", for: .normal)
        seven.setTitleColor(.white, for: .normal)
        seven.layer.cornerRadius = (view.frame.width * 0.127)
        seven.titleLabel?.font = .systemFont(ofSize: 30)
        
        eight.backgroundColor = .darkGray
        eight.setTitle("8", for: .normal)
        eight.setTitleColor(.white, for: .normal)
        eight.layer.cornerRadius = (view.frame.width * 0.127)
        eight.titleLabel?.font = .systemFont(ofSize: 30)
        
        nine.backgroundColor = .darkGray
        nine.setTitle("9", for: .normal)
        nine.setTitleColor(.white, for: .normal)
        nine.layer.cornerRadius = (view.frame.width * 0.127)
        nine.titleLabel?.font = .systemFont(ofSize: 30)
        
        multiplication.backgroundColor = .orange
        multiplication.setTitle("x", for: .normal)
        multiplication.setTitleColor(.white, for: .normal)
        multiplication.layer.cornerRadius = (view.frame.width * 0.127)
        multiplication.titleLabel?.font = .systemFont(ofSize: 35)
        
        clear.backgroundColor = .gray
        clear.setTitle("C", for: .normal)
        clear.setTitleColor(.white, for: .normal)
        clear.layer.cornerRadius = (view.frame.width * 0.127)
        clear.titleLabel?.font = .systemFont(ofSize: 30)
        
        negative.backgroundColor = .gray
        negative.setTitle("+/-", for: .normal)
        negative.setTitleColor(.white, for: .normal)
        negative.layer.cornerRadius = (view.frame.width * 0.127)
        negative.titleLabel?.font = .systemFont(ofSize: 25)
        
        percent.backgroundColor = .gray
        percent.setTitle("%", for: .normal)
        percent.setTitleColor(.white, for: .normal)
        percent.layer.cornerRadius = (view.frame.width * 0.127)
        percent.titleLabel?.font = .systemFont(ofSize: 35)
        
        divide.backgroundColor = .orange
        divide.setTitle("÷", for: .normal)
        divide.setTitleColor(.white, for: .normal)
        divide.layer.cornerRadius = (view.frame.width * 0.127)
        divide.titleLabel?.font = .systemFont(ofSize: 35)
        
        
        label.text = "0"
        label.textColor = .white
        label.font = label.font.withSize(75)
        label.textAlignment = .right
        
        
    }
}
