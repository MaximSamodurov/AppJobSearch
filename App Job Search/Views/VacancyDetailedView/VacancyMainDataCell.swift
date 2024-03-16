//
//  VacancyMainDataCell.swift
//  App Job Search
//
//  Created by Fixed on 14.03.24.
//

import UIKit

class VacancyMainDataCell: UICollectionViewCell {
    
    static let id = "VacancyMainData"
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.text = "UX/UI Designer"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    lazy var salary: UILabel = {
        let label = UILabel()
        label.text = "Уровень дохода не указан"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    lazy var expirenceLabel: UILabel = {
        let label = UILabel()
        label.text = "Требуемый опыт: от 1 года до 3 лет"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
        
    lazy var fulltimeOrNotLabel: UILabel = {
        let label = UILabel()
        label.text = "Полная занятость, полный день"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    lazy var reactCount: UILabel = {
        let label = UILabel()
        label.text = "147 человек уже\nоткликнулись"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    lazy var reactCountPic: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "gym.bag")
        iv.tintColor = .white
        return iv
    }()
    
    lazy var viewersNowLabel: UILabel = {
        let label = UILabel()
        label.text = "2 человека\nсейчас смотрят"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    lazy var viewersNowPic: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "gym.bag")
        iv.tintColor = .white
        return iv
    }()
    
    lazy var expirenceStackView = VerticalStackView(arrangedSubViews: [expirenceLabel, fulltimeOrNotLabel])
    
    lazy var reactCountStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [reactCount, reactCountPic])
        stack.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.backgroundColor = #colorLiteral(red: 0.07804576308, green: 0.3492759764, blue: 0.01978065446, alpha: 1)
        stack.layer.cornerRadius = 8
        return stack
    }()
    
    lazy var viewersStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [viewersNowLabel, viewersNowPic])
        stack.layoutMargins = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.backgroundColor = #colorLiteral(red: 0.07804576308, green: 0.3492759764, blue: 0.01978065446, alpha: 1)
        stack.layer.cornerRadius = 8
        return stack
    }()
    
    lazy var reactAndViewersStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [reactCountStackView, viewersStackView])
        stack.spacing = 8
        return stack
    }()
    
    lazy var overallStack: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [title, salary, expirenceStackView, reactAndViewersStackView])
        stack.distribution = .fillProportionally
        stack.spacing = 15
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(overallStack)
        setupOverallStack()
    }

    func setupOverallStack() {
        overallStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            overallStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            overallStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            overallStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            overallStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            overallStack.widthAnchor.constraint(equalToConstant: 370),
            overallStack.heightAnchor.constraint(equalToConstant: 180),
        ])            
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
