//
//  MainViewController.swift
//  App Job Search
//
//  Created by Fixed on 12.03.24.
//

import UIKit

class MainViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        print("Search Results", searchController.searchBar.text)
    }
    private let searchController = UISearchController(searchResultsController: nil)
    
    private func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Должность, ключевые слова"
        navigationItem.searchController = self.searchController
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .black
        collection.translatesAutoresizingMaskIntoConstraints = false
        layout.sectionInset = UIEdgeInsets(top: 2, left: 0, bottom: 2, right: 0)
        collection.register(SearchBarCell.self, forCellWithReuseIdentifier: SearchBarCell.id)
        collection.register(RecommendedContanier.self, forCellWithReuseIdentifier: RecommendedContanier.id)
        collection.register(ResultsContanier.self, forCellWithReuseIdentifier: ResultsContanier.id)
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
        setupSearchController()
    }

    func setupViews() {
        view.addSubview(collectionView)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 0: return CGSize(width: UIScreen.main.bounds.width, height: 200)
        case 1: return CGSize(width: UIScreen.main.bounds.width, height: 600)
        default: return CGSize(width: 0, height: 0)
        }
    }
}
