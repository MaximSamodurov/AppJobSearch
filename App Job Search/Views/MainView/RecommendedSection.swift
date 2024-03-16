//
//  RecommendedSection.swift
//  App Job Search
//
//  Created by Fixed on 13.03.24.
//

import UIKit

class RecommendedSection: UICollectionViewCell {
    
    static let id = "RecommendedSection"
    
    let avatar: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "avatar")
        return iv
    }()
    

    let infoBlock: UILabel = {
        let label = UILabel()
        label.text = "Вакансии\nрядом с вами"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let infoBlocklow: UILabel = {
        let label = UILabel()
        label.text? = ""
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.297748059, green: 0.6983962655, blue: 0.3051883578, alpha: 1)
        return label
    }()
    
    let spacer: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var highStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [avatar, spacer])
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.clipsToBounds = true
        return stack
    }()
    
    lazy var blockStackView: VerticalStackView = {
        let stack = VerticalStackView(arrangedSubViews: [highStackView, infoBlock, infoBlocklow])
        stack.distribution = .fillProportionally
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = #colorLiteral(red: 0.1299212277, green: 0.1332892776, blue: 0.1416421831, alpha: 1)
        stack.layer.cornerRadius = 10
        stack.layoutMargins = UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 0)
        stack.isLayoutMarginsRelativeArrangement = true
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        stackConfig()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func stackConfig() {
        
        contentView.addSubview(blockStackView)
        NSLayoutConstraint.activate([
            blockStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            blockStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            blockStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            blockStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
        ])
    }
}
