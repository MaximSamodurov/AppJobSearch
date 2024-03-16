//
//  ViewController.swift
//  App Job Search
//
//  Created by Fixed on 12.03.24.
//

import UIKit

class EnterAccountController: UIViewController {
    
    var model: EnterAccountViewModel = EnterAccountViewModel()
    
    let findJobLabel: UILabel = {
        let label = UILabel()
        label.text = "Поиск работы"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Электронная почта или телефон"
        textField.textColor = .white
        textField.font = UIFont.boldSystemFont(ofSize: 15)
        textField.backgroundColor = #colorLiteral(red: 0.1926629543, green: 0.1960345805, blue: 0.2043911219, alpha: 1)
        textField.layer.cornerRadius = 8
        textField.leftViewMode = .always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 70, height: 70))
        let image = UIImage(systemName: "envelope")
        imageView.image = image
        textField.leftView = imageView
        imageView.contentMode = .center
        imageView.tintColor = .white
        return textField
    }()
    
    let continiueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Продолжить", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1992278695, green: 0.4940429926, blue: 0.9958770871, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let enterWithPassButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Войти с паролем", for: .normal)
        button.tintColor = #colorLiteral(red: 0.1992278695, green: 0.4940429926, blue: 0.9958770871, alpha: 1)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var buttonsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [continiueButton, enterWithPassButton])
        stack.spacing = 10
        return stack
    }()
    
    lazy var highStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [findJobLabel, emailTextField, buttonsStackView])
        stack.spacing = 15
        stack.distribution = .equalSpacing
        stack.layoutMargins = UIEdgeInsets(top: 30, left: 20, bottom: 30, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.customize(backgroundColor: #colorLiteral(red: 0.1338424981, green: 0.1372108757, blue: 0.1455640793, alpha: 1), radiusSize: 10)
        return stack
    }()
    
    let findEmployee: UILabel = {
        let label = UILabel()
        label.text = "Поиск сотрудников"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let placeVacancy: UILabel = {
        let label = UILabel()
        label.text = "Размещение вакансий и доступ к базе резюме"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let findEmployeeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Я ищу сотрудников", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.297748059, green: 0.6983962655, blue: 0.3051883578, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 18
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var lowStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [findEmployee, placeVacancy, findEmployeeButton])
        stack.spacing = 15
        stack.distribution = .equalSpacing
        stack.layoutMargins = UIEdgeInsets(top: 30, left: 20, bottom: 30, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.customize(backgroundColor: #colorLiteral(red: 0.1338424981, green: 0.1372108757, blue: 0.1455640793, alpha: 1), radiusSize: 10)
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupHeader()
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(highStackView)
        view.addSubview(lowStackView)
        highStackView.translatesAutoresizingMaskIntoConstraints = false
        lowStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            highStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            highStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            highStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            continiueButton.heightAnchor.constraint(equalToConstant: 45),
            enterWithPassButton.heightAnchor.constraint(equalToConstant: 45),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            lowStackView.topAnchor.constraint(equalTo: highStackView.bottomAnchor, constant: 20),
            lowStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            lowStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
    private func setupHeader() {
        let longTitleLabel = UILabel()
        longTitleLabel.text = "Вход в личный кабинет"
        longTitleLabel.font = .boldSystemFont(ofSize: 22)
        longTitleLabel.textColor = .white
        longTitleLabel.sizeToFit()
        let leftItem = UIBarButtonItem(customView: longTitleLabel)
        self.navigationItem.leftBarButtonItem = leftItem
    }
}

