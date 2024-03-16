//
//  VacancyDetailedController+CollectionView.swift
//  App Job Search
//
//  Created by Fixed on 16.03.24.
//

import UIKit

extension VacanyDetailedController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VacancyMainDataCell.id, for: indexPath) as! VacancyMainDataCell
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VacancyMapDataCell.id, for: indexPath)
            return cell
        } else if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VacancyDescriptionDataCell.id, for: indexPath)
            return cell
        } else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VacancyQuestionDataCell.id, for: indexPath)
            return cell
        }
        return UICollectionViewCell()
    }
}

extension VacanyDetailedController: UICollectionViewDelegate {
    
}
