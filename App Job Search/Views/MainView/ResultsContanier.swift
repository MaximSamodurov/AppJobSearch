//
//  ResultsContanier.swift
//  App Job Search
//
//  Created by Fixed on 13.03.24.
//

import UIKit

class ResultsContanier: UICollectionViewCell {
    
    static let id = "ResultsContanier"
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: bounds, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ResultsSection.self, forCellReuseIdentifier: "cell")
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 20, right: 0)
        tableView.backgroundColor = .black
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableView)
        self.tableView.reloadData()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        
}

extension ResultsContanier: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 400))
//        footerView.translatesAutoresizingMaskIntoConstraints = false
        footerView.contentMode = .center
        footerView.backgroundColor = .black
        footerView.addSubview(reactButton)
        return footerView
    }
}
