//
//  MainViewController+CollectionView.swift
//  App Job Search
//
//  Created by Fixed on 16.03.24.
//

import UIKit

extension MainViewController: UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedContanier.id, for: indexPath)
          return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ResultsContanier.id, for: indexPath)
          return cell
        }
          return UICollectionViewCell()
    }
}
