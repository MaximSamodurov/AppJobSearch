//
//  RecommendedCollectionViewCell.swift
//  App Job Search
//
//  Created by Fixed on 13.03.24.
//

import UIKit

class RecommendedContanier: UICollectionViewCell {
    
    static let id = "RecommendedContanier"
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150, height: 150)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .black
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.register(RecommendedSection.self, forCellWithReuseIdentifier: RecommendedSection.id)
        collection.delegate = self
        collection.dataSource = self
        
        return collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(collectionView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

extension RecommendedContanier: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedSection.id, for: indexPath) as! RecommendedSection
        if indexPath.item == 1 {
            cell.avatar.image = UIImage(named: "avatar2")
            cell.infoBlock.text = "Поднять резюме\nв поиске"
            cell.infoBlocklow.text = "Поднять"
        } else if indexPath.item == 2 {
            cell.avatar.image = UIImage(named: "avatar3")
            cell.infoBlock.text = "Временная\nработа или\nподработка"
        }
        
        return cell
    }
}

extension RecommendedContanier: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}
