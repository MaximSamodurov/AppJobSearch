//
//  VacanyDetailedController.swift
//  App Job Search
//
//  Created by Fixed on 14.03.24.
//

import UIKit

class VacanyDetailedController: UIViewController {
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        view.backgroundColor = .black

    }

    func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
        collectionView.register(VacancyMainDataCell.self, forCellWithReuseIdentifier: VacancyMainDataCell.id)
        collectionView.register(VacancyMapDataCell.self, forCellWithReuseIdentifier: VacancyMapDataCell.id)
        collectionView.register(VacancyDescriptionDataCell.self, forCellWithReuseIdentifier: VacancyDescriptionDataCell.id)
        collectionView.register(VacancyQuestionDataCell.self, forCellWithReuseIdentifier: VacancyQuestionDataCell.id)
        view.addSubview(collectionView)
        collectionView.backgroundColor = .black
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isScrollEnabled = true
        collectionView.isUserInteractionEnabled = true
        collectionView.alwaysBounceVertical = true
    }
    
    func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.sectionInset = .init(top: 0, left: 0, bottom: 0, right: 0)
        return layout
    }
}

extension VacanyDetailedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 200)
        } else if indexPath.section == 1 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 450)
        } else if indexPath.section == 2 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 300)
        } else if indexPath.section == 3 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 240)
        }
        return CGSize()
     }
}
