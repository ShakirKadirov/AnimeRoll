//
//  tableCell.swift
//  AnimeRoll
//
//  Created by Shakir Kadirov on 26.02.2024.
//

import UIKit

class tableCell: UITableViewCell {
    
    static let reuseID = "Cell"
    
    private lazy var rootViewCell: UIView = {
        let view = UIView()
        view.addSubview(imageCell)
        view.addSubview(nameCell)
        view.addSubview(animeNameCell)
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        view.backgroundColor = .systemGray4

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var imageCell: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var nameCell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var animeNameCell: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(rootViewCell)
        setContraints()
    }
    
     func setupCell(image: UIImage, name: String, animeName: String){
        imageCell.image = image
        nameCell.text = name
        animeNameCell.text = animeName
    }
    
    private func setContraints(){
        NSLayoutConstraint.activate([
            rootViewCell.topAnchor.constraint(equalTo: topAnchor),
            rootViewCell.leadingAnchor.constraint(equalTo: leadingAnchor),
            rootViewCell.trailingAnchor.constraint(equalTo: trailingAnchor),
            rootViewCell.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            imageCell.topAnchor.constraint(equalTo: rootViewCell.topAnchor, constant: 20),
            imageCell.leadingAnchor.constraint(equalTo: rootViewCell.leadingAnchor, constant: 20),
            imageCell.trailingAnchor.constraint(equalTo: rootViewCell.centerXAnchor, constant: 50),
            imageCell.heightAnchor.constraint(equalToConstant: 200),
            imageCell.bottomAnchor.constraint(equalTo: rootViewCell.bottomAnchor, constant: -20),
            
            nameCell.leadingAnchor.constraint(equalTo: imageCell.trailingAnchor, constant: 10),
            nameCell.trailingAnchor.constraint(equalTo: rootViewCell.trailingAnchor, constant: -20),
            nameCell.topAnchor.constraint(equalTo: rootViewCell.centerYAnchor, constant: -10),
            
            animeNameCell.topAnchor.constraint(equalTo: rootViewCell.centerYAnchor, constant: 10),
            animeNameCell.leadingAnchor.constraint(equalTo: imageCell.trailingAnchor, constant: 10),
            animeNameCell.trailingAnchor.constraint(equalTo: rootViewCell.trailingAnchor, constant: -20),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
