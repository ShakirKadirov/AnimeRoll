//
//  ViewController.swift
//  AnimeRoll
//
//  Created by Shakir Kadirov on 26.02.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    let tableData: [TableModel] = [
        TableModel(image: "ichigo.png", name: "Ichigo", animeName: "Bleach"),
        TableModel(image: "kyouraku.jpg", name: "Kyouraku", animeName: "Bleach"),
        TableModel(image: "kenpachi.jpg", name: "Kenpachi", animeName: "Bleach"),
        TableModel(image: "gin.jpg", name: "Gin", animeName: "Bleach"),
        TableModel(image: "ichigo.png", name: "Ichigo", animeName: "Bleach"),
        TableModel(image: "kyouraku.jpg", name: "Kyouraku", animeName: "Bleach"),
    ]

    private lazy var tabView: UITableView = {
        let tabView = UITableView()
        tabView.delegate = self
        tabView.dataSource = self
        tabView.register(tableCell.self, forCellReuseIdentifier: tableCell.reuseID)
        tabView.translatesAutoresizingMaskIntoConstraints = false
        return tabView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(tabView)
        setConstraints()
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            tabView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tabView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tabView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tabView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}


extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableCell.reuseID, for: indexPath) as! tableCell
        
        let imageData = tableData[indexPath.row].image
        
        if let image = UIImage(named: imageData){
            cell.setupCell(image: image, name: tableData[indexPath.row].name, animeName: tableData[indexPath.row].animeName)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = tableData[indexPath.row]
        
        let detail = DetailViewController()
        navigationController?.pushViewController(detail, animated: true)
    }
    

}
