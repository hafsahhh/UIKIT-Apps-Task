//
//  OnboardingCollectionViewCell.swift
//  Apps UIKIT
//
//  Created by Siti Hafsah on 24/07/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifierr = "OnboardingCollectionViewCell"
    
    let imageView = UIImageView()
    let headlineLabel = UILabel()
    let subHeadlineLabel = UILabel()
//    let descriptionStackView = UIStackView()
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        configure()
     }

     required init?(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    func update(image: String, title: String, body: String) {
        imageView.image = UIImage(named: image)
        headlineLabel.text = title
        subHeadlineLabel.text = body
    }
    
    func configure() {
        backgroundColor = .systemBackground
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)

        headlineLabel.textAlignment = .left
        headlineLabel.textColor = .label
        headlineLabel.numberOfLines = 0
        headlineLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        headlineLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(headlineLabel)
        
        subHeadlineLabel.textAlignment = .left
        subHeadlineLabel.font = UIFont.systemFont(ofSize: 12)
        subHeadlineLabel.textColor = .secondaryLabel
        subHeadlineLabel.numberOfLines = 0
        subHeadlineLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subHeadlineLabel)
        
//        descriptionStackView.addArrangedSubview(headlineLabel)
//        descriptionStackView.addArrangedSubview(subHeadlineLabel)
//
//        descriptionStackView.axis = .vertical
//        descriptionStackView.spacing = 10
//        descriptionStackView.alignment = .leading
//        descriptionStackView.translatesAutoresizingMaskIntoConstraints = false
        
//        addSubview(descriptionStackView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 390),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.heightAnchor.constraint(equalToConstant: 460),
            
            headlineLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 520),
            headlineLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 39), //kiri
            headlineLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            subHeadlineLabel.topAnchor.constraint(equalTo: headlineLabel.bottomAnchor, constant: 20),
            subHeadlineLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 39), //kiri
            subHeadlineLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            
//            descriptionStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
//            descriptionStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            descriptionStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//            descriptionStackView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
