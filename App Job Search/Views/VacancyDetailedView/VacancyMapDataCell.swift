//
//  VacancyMapDataCell.swift
//  App Job Search
//
//  Created by Fixed on 14.03.24.
//

import UIKit


class VacancyMapDataCell: UICollectionViewCell {
    
    static let id = "VacancyMapData"
    
    let companyName: UILabel = {
        let label = UILabel()
        label.text = "Мобирикс"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let checkmarkImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "checkmark.circle")
        iv.tintColor = .white
        return iv
    }()
    
    let mapPicture: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "vacancyPhoto")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
        
    let adressLabel: UILabel = {
        let label = UILabel()
        label.text = "Минск, улица Бирюзова 4/5"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "MOBYRIX - динамично развивающаяся продуктовая IT-компания, специализирующаяся на разработке мобильных приложений для iOS и Android. Наша команда работает над собственными продуктами в разнообразных сферах: от утилит до развлечений и бизнес-приложений. Мы ценим талант и стремление к инновациям и в данный момент в поиске талантливого UX/UI Designer, готового присоединиться к нашей команде и внести значимый вклад в развитие наших проектов."
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    
    lazy var companyNameStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [companyName, checkmarkImage])
        stack.spacing = 10
        return stack
    }()
    
    lazy var descStackView = UIStackView(arrangedSubviews: [descriptionLabel])
    
    lazy var mapOverallStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [companyName, mapPicture, adressLabel])
        stack.distribution = .fillEqually
        stack.spacing = 1
        stack.customize(backgroundColor: #colorLiteral(red: 0.1338424981, green: 0.1372108757, blue: 0.1455640793, alpha: 1), radiusSize: 10)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layoutMargins = UIEdgeInsets(top: 15, left: 5, bottom: 0, right: 5)
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    private func setupLayout() {
        addSubview(mapOverallStackView)
        addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            mapOverallStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            mapOverallStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            mapOverallStackView.widthAnchor.constraint(equalToConstant: 360),
            mapOverallStackView.heightAnchor.constraint(equalToConstant: 150),
            descriptionLabel.topAnchor.constraint(equalTo: mapOverallStackView.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
