//
//  ViewController.swift
//  VPN1
//
//  Created by Алексей Гуляев on 05.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 10
        return stack
    }()

    private lazy var textLabel: UIView = {
        let textLabel = UILabel()
        textLabel.textColor = .black
        textLabel.font = .systemFont(ofSize: 15)
        textLabel.textAlignment = .center
        textLabel.text = "Отключено"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    private lazy var countDownLabel: UILabel = {
        let countDownLabel = UILabel()
        countDownLabel.textColor = .black.withAlphaComponent(0.1)
        countDownLabel.font = .systemFont(ofSize: 34)
        countDownLabel.textAlignment = .center
        countDownLabel.text = "00:00:00"
        countDownLabel.translatesAutoresizingMaskIntoConstraints = false
        return countDownLabel
    }()
    
    private lazy var switcher: UISwitch = {
        let switcher = UISwitch()
        switcher.thumbTintColor = .link
        switcher.onTintColor = .systemGray2
        switcher.transform = CGAffineTransform(scaleX: 3.5, y: 3.5)
        switcher.translatesAutoresizingMaskIntoConstraints = false
        return switcher
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setUpUI()
    }

    private func setUpUI() {
        view.backgroundColor = .white
        stack.addArrangedSubview(textLabel)
        stack.addArrangedSubview(countDownLabel)
        
        view.addSubview(stack)
        view.addSubview(switcher)

        
        stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110).isActive = true
        stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110).isActive = true
        stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 287).isActive = true
  
        switcher.center.y = view.center.y + 40
        switcher.center.x = view.center.x
//        switcher.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 80).isActive = true
//        switcher.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -110).isActive = true
//        switcher.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 110).isActive = true

    }
}

