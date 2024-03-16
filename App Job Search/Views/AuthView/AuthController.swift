//
//  AuthController.swift
//  App Job Search
//
//  Created by Fixed on 15.03.24.
//

import UIKit

class AuthController: UIViewController {
    
    let emailFromEnterController = "example@mail.ru"
    
    lazy var sentCodeLabel: UILabel = {
        let label = UILabel()
        label.text = "Отправили код на \(emailFromEnterController)"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let alrtLabel: UILabel = {
        let label = UILabel()
        label.text = "Напишите его, чтобы подтвердить, что это \nвы, а не кто-то другой входит в личный \nкабинет"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let textField1: UITextField = {
        let textField = UITextField()
        textField.placeholder = "*"
        textField.textColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.1926629543, green: 0.1960345805, blue: 0.2043911219, alpha: 1)
        textField.layer.cornerRadius = 6
        return textField
    }()
    let textField2: UITextField = {
        let textField = UITextField()
        textField.placeholder = "*"
        textField.textColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.1926629543, green: 0.1960345805, blue: 0.2043911219, alpha: 1)
        textField.layer.cornerRadius = 6
        return textField
    }()
    let textField3: UITextField = {
        let textField = UITextField()
        textField.placeholder = "*"
        textField.textColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.1926629543, green: 0.1960345805, blue: 0.2043911219, alpha: 1)
        textField.layer.cornerRadius = 6
        return textField
    }()
    let textField4: UITextField = {
        let textField = UITextField()
        textField.placeholder = "*"
        textField.textColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 24)
        textField.textAlignment = .center
        textField.backgroundColor = #colorLiteral(red: 0.1926629543, green: 0.1960345805, blue: 0.2043911219, alpha: 1)
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    let acceptButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Подтвердить", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1992278695, green: 0.4940429926, blue: 0.9958770871, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let padding: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        return view
    }()
    
    lazy var textFieldStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [textField1, textField2, textField3, textField4, padding, padding])
        stack.spacing = 7
        stack.distribution = .fillEqually
        return stack
    }()
    
    
    lazy var overallStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [sentCodeLabel, alrtLabel, textFieldStackView, acceptButton])
        stack.spacing = 20
        return stack
    }()
    
    override func viewDidLoad() {
        setupLayout()
    }
    
    
    private func setupLayout() {
        view.addSubview(overallStackView)
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            overallStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
            overallStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            overallStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            textFieldStackView.heightAnchor.constraint(equalToConstant: 60),
            acceptButton.heightAnchor.constraint(equalToConstant: 45)    
        
        ])
    }
}
