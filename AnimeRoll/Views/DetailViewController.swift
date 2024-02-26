//
//  DetailViewController.swift
//  AnimeRoll
//
//  Created by Shakir Kadirov on 27.02.2024.
//

import UIKit

class DetailViewController: UIViewController {

    var item: TableModel?// Здесь String - тип данных, который вы хотите передать

    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // Добавляем метку на экран
        view.addSubview(label)

        // Устанавливаем констрейнты для метки
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
}
