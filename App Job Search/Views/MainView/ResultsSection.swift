//
//  ResultsSection.swift
//  App Job Search
//
//  Created by Fixed on 13.03.24.
//

import UIKit
class ResultsSection: UITableViewCell {
    
    static let id = "ResultsSection"
    
    let viewsNowLabel: UILabel = {
        let vn = UILabel()
        vn.text = "Сейчас просматривает 1 человек"
        vn.textColor = .white
        vn.textColor = #colorLiteral(red: 0.2969735563, green: 0.6944704056, blue: 0.3056696057, alpha: 1)
        return vn
    }()
    
    let heartPic: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "heart")
        iv.tintColor = #colorLiteral(red: 0.1992278695, green: 0.4940429926, blue: 0.9958770871, alpha: 1)
        return iv
    }()
    
    let titleLabel: UILabel = {
        let tl = UILabel()
        tl.text = "UI/UI Designer"
        tl.textColor = .white
        return tl
    }()
    
    let townLabel: UILabel = {
        let tl = UILabel()
        tl.text = "Минск"
        tl.textColor = .white
        return tl
    }()
    
    let companyName: UILabel = {
        let cn = UILabel()
        cn.text = "Мобирикс"
        cn.textColor = .white
        return cn
    }()
    
    let expirenceLabel: UILabel = {
        let el = UILabel()
        el.text = "Опыт от 1 года до 3 лет"
        el.textColor = .white
        return el
    }()
    
    let bagPic: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "gym.bag")
        iv.tintColor = .black
        iv.tintColor = .white
        return iv
    }()
    
    let publishedLabel: UILabel = {
        let label = UILabel()
        label.text = "Опубликовано 20 февраля"
        label.tintColor = .white
        return label
    }()
    
    let reactButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Откликнуться", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.297748059, green: 0.6983962655, blue: 0.3051883578, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let reactButton2: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        return view
    }()
    
    let paddingView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var viewsNowStack = UIStackView(arrangedSubviews: [viewsNowLabel, heartPic])
    lazy var expirenceStackView = UIStackView(arrangedSubviews: [bagPic, expirenceLabel])
    lazy var overallStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [viewsNowStack, titleLabel, townLabel, companyName, expirenceStackView, publishedLabel, reactButton, reactButton2])
        return stack
    }()
    
    private func setupViews() {
        overallStackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(overallStackView)
        NSLayoutConstraint.activate([
            overallStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            overallStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            overallStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            overallStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
        ])
        contentView.backgroundColor = .black
    }
}
