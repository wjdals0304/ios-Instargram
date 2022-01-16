//
//  FeedViewController.swift
//  Instargram
//
//  Created by 김정민 on 2022/01/16.
//
import SnapKit
import UIKit

class FeedViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.backgroundColor = .systemBackground
        tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.register(FeedTableViewCell.self, forCellReuseIdentifier: "FeedTableViewCell")
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
    }


}

extension FeedViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as? FeedTableViewCell
        cell?.selectionStyle = .none
        cell?.setUp()
        return cell ?? UITableViewCell()
    }
}


private extension FeedViewController {
    func setupNavigationBar() {
        navigationItem.title = "Instargram"
        
        let uploadButton = UIBarButtonItem(
                image: UIImage(systemName: "plus.app"),
                style: .plain,
                target: self,
                action: nil)
        navigationItem.rightBarButtonItem = uploadButton
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        tableView.snp.makeConstraints{ $0.edges.equalToSuperview() }
    }
}

