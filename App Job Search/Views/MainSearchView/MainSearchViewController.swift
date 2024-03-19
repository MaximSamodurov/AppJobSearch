//
//  MainSearchViewController.swift
//  App Job Search
//
//  Created by Fixed on 17.03.24.
//

import UIKit

class MainSearchViewController: UICollectionViewController {
    
    init() {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, environmet) -> NSCollectionLayoutSection? in
            // .fractionalWidth(1) и .fractionalHeight(1) значит что item будет заполнять полностью внутреннее пространство group, а вот у group мы уже выставляем нужное нам значение высоты и ширины для всех айтемов
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            //.init(widthDimension: .fractionalWidth(1) - полностью заполняет пространство экрана по ширине, height absoulute и мы выставляем кастом значение для высоты
            item.contentInsets.bottom = 16
            item.contentInsets.trailing = 16
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(300)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            
            section.orthogonalScrollingBehavior = .continuous
            return section
        }
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // общее количество блоков
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    // количество секций в каждом общем блоке
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else if section == 1 {
            return 10
        }
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = .red
        return cell
//        if indexPath.section == 0 {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedSection.id, for: indexPath)
//            return cell
//        } else if indexPath.sec
//        return UICollectionViewCell()
    }
    
    private let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
//        collectionView.register(RecommendedSection.self, forCellWithReuseIdentifier: RecommendedSection.id)
        
    }
    
}
