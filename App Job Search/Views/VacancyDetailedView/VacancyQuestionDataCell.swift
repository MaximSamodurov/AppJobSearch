//
//  VacancyQuestionDataCell.swift
//  App Job Search
//
//  Created by Fixed on 15.03.24.
//

import UIKit

class VacancyQuestionDataCell: UICollectionViewCell {
    
    static let id = "VacancyQuestionData"
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Задайте вопрос работадателю"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .white
        return label
    }()
    
    let jobLabel: UILabel = {
        let label = UILabel()
        label.text = "Он получит его с откликом на вакансию"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        return label
    }()
    
    let questionGrayLabel1: UILabel = {
        let label = UILabel()
        label.text = "Где располагается место работы?"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.backgroundColor = UIColor(white: 0.7, alpha: 0.1)
        label.layer.cornerRadius = 5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let questionGrayLabel2: UILabel = {
        let label = UILabel()
        label.text = "Какой график работы?"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.backgroundColor = UIColor(white: 0.7, alpha: 0.1)
        label.layer.cornerRadius = 5
        return label
    }()
    
    let questionGrayLabel3: UILabel = {
        let label = UILabel()
        label.text = "Вакансия открыта?"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.backgroundColor = UIColor(white: 0.7, alpha: 0.1)
        label.layer.cornerRadius = 5
        return label
    }()
    
    let questionGrayLabel4: UILabel = {
        let label = UILabel()
        label.text = "Какая оплата труда?"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.backgroundColor = UIColor(white: 0.7, alpha: 0.1)
        label.layer.cornerRadius = 5
        return label
    }()
    
    lazy var reactButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Откликнуться", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.297748059, green: 0.6983962655, blue: 0.3051883578, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var questionGrayLabelStackView: VerticalStackView = {
        let stack =  VerticalStackView(arrangedSubViews: [questionGrayLabel1, questionGrayLabel2, questionGrayLabel3, questionGrayLabel4])
        stack.spacing = 10
        stack.distribution = .fill
        return stack
    }()
    lazy var overallStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [questionLabel, jobLabel, questionGrayLabelStackView])
        stack.spacing = 10
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    
    private func setupLayout() {
        addSubview(overallStackView)
        addSubview(reactButton)
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        reactButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overallStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            overallStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            overallStackView.widthAnchor.constraint(equalToConstant: 370),
            reactButton.topAnchor.constraint(equalTo: overallStackView.bottomAnchor, constant: 20),
            reactButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            reactButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            reactButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
