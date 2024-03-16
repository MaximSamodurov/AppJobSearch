//
//  VacancyDescriptionDataCell.swift
//  App Job Search
//
//  Created by Fixed on 14.03.24.
//

import UIKit

class VacancyDescriptionDataCell: UICollectionViewCell {
    
    static let id = "VacancyDescriptionData"
    
    let jobTitle: UILabel = {
        let label = UILabel()
        label.text = "Ваши задачи"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let jobDescription: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "-Проектировать пользовательский опыт, проводить UX исследования; -Разрабатывать адаптивный дизайн интерфейса для мобильных приложений; -Разрабатывать быстрые прототипы для тестирования идеи дизайна и их последующая; интеграция на основе обратной связи от команды и пользователей; -Взаимодействовать с командой разработчиков для обеспечения точной реализации ваших дизайнов; -Анализ пользовательского опыта и адаптация под тренды."
        label.textColor = .white
        return label
    }()
    
    lazy var descriptionOveralStackView = VerticalStackView(arrangedSubViews: [jobTitle, jobDescription])

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        addSubview(descriptionOveralStackView)
        descriptionOveralStackView.translatesAutoresizingMaskIntoConstraints = false
        descriptionOveralStackView.distribution = .fill
        
        NSLayoutConstraint.activate([
            descriptionOveralStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            descriptionOveralStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            descriptionOveralStackView.widthAnchor.constraint(equalToConstant: 370),
        ])
    }
    
}
