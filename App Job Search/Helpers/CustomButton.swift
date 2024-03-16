//
//  CustomButton.swift
//  App Job Search
//
//  Created by Fixed on 13.03.24.
//

import UIKit

class CustomButton: UIButton {
    let avatar: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "avatar")
        iv.clipsToBounds = true
        return iv
    }()
    
    
    let infoBlock: UILabel = {
        let label = UILabel()
        label.text = "Вакансии рядом с вами"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let infoBlocklow: UILabel = {
        let label = UILabel()
        label.text? = "Вакансии рядом с вами"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.297748059, green: 0.6983962655, blue: 0.3051883578, alpha: 1)
        return label
    }()
    
    let spacer: UIView = {
        let view = UIView()
        return view
    }()
    
    required init(frame: CGRect, highLabelTitle: String, lowLabelTitle: String, imageName: String) {
        super.init(frame: frame)
        
        infoBlock.text = highLabelTitle
        infoBlocklow.text = lowLabelTitle
        avatar.image = UIImage(named: imageName)
        
        stackConfig()
    }
    
    private func stackConfig() {
        let highStackView = UIStackView(arrangedSubviews: [avatar, spacer])
        let blockStackView = VerticalStackView(arrangedSubViews: [highStackView, infoBlock, infoBlocklow])
        addSubview(blockStackView)
        blockStackView.distribution = .fillProportionally
        blockStackView.translatesAutoresizingMaskIntoConstraints = false
        blockStackView.spacing = 10
        blockStackView.backgroundColor = #colorLiteral(red: 0.1299212277, green: 0.1332892776, blue: 0.1416421831, alpha: 1)
        blockStackView.clipsToBounds = true
        blockStackView.isLayoutMarginsRelativeArrangement = true
        blockStackView.layoutMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        blockStackView.layer.cornerRadius = 10
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
