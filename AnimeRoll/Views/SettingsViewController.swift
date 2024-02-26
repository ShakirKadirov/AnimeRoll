//
//  SettingsViewController.swift
//  AnimeRoll
//
//  Created by Shakir Kadirov on 26.02.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "В разработке"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.frame = CGRect(x: 30, y: view.center.y - 50, width: view.frame.width - 60, height: 25)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(label)
        view.backgroundColor = .white
    }
}
