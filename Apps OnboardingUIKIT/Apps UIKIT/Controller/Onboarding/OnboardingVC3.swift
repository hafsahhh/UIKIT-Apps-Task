//
//  OnboardingVC3.swift
//  Apps UIKIT
//
//  Created by Siti Hafsah on 24/07/23.
//

import UIKit

class OnboardingVC3: UIViewController {
    
    lazy var imagebg1 : UIImageView = {
        let imagebg1 = UIImageView ()
        imagebg1.image = UIImage(named: "bg1")

        return imagebg1
    }()
    
    lazy var imageTangan : UIImageView = {
        let imageTangan = UIImageView ()
        imageTangan.image = UIImage(named: "tangan")

        return imageTangan
    }()
    
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Your First Steps to Success"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.sizeToFit()
        
        return label
    }()
    
    lazy var bodyLabel : UILabel = {
        let bodyLabel = UILabel()
        bodyLabel.text = "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact."
        bodyLabel.font = UIFont (name: "Poppins", size: 12)
        bodyLabel.textColor = .gray
        bodyLabel.textAlignment = .left
        bodyLabel.numberOfLines = 0
        bodyLabel.sizeToFit()
        
        return bodyLabel
    }()
    
    lazy var skipLabel : UILabel = {
        let skipLabel = UILabel()
        skipLabel.text = "Skip"
        skipLabel.font = UIFont (name: "Poppins", size: 12)
        skipLabel.textColor = .black
        skipLabel.textAlignment = .left
        
        skipLabel.sizeToFit()
        
        return skipLabel
    }()
    
    lazy var nextBtn : UIButton = {
        let btn = UIButton(type: .custom) as UIButton
        btn.backgroundColor = .black
        btn.setTitle("Next->", for: .normal)
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
        return btn
    }()
    
    @objc func clickMe(sender:UIButton!) {
      print("Button Clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //image bg1
        view.addSubview(imagebg1)
        imagebg1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagebg1.topAnchor.constraint(equalTo: self.view.topAnchor, constant:0),
            imagebg1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            imagebg1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            imagebg1.heightAnchor.constraint(equalToConstant: 393)
        ])
        
        //image tangan
        view.addSubview(imageTangan)
        imageTangan.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageTangan.topAnchor.constraint(equalTo: self.view.topAnchor, constant:62),
            imageTangan.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            imageTangan.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            imageTangan.heightAnchor.constraint(equalToConstant: 501)
        ])
        
        //titlelabel
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 520),
            titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 39),
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)//kiri
//            titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 94), //kanan
//            titleLabel.bottomAnchor.constraint(equalTo: self.view..bottomAnchor, constant: 80)
        ])
        
        //bodyLabel
        view.addSubview(bodyLabel)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 11),
            bodyLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 39), //kiri
            bodyLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        //skipLabel
        view.addSubview(skipLabel)
        skipLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            skipLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 750),
            skipLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 42), //kiri
        ])
        
        //nextBtn
        view.addSubview(nextBtn)
        nextBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextBtn.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 745),
            nextBtn.leadingAnchor.constraint(equalTo: skipLabel.trailingAnchor, constant: 230),
            nextBtn.widthAnchor.constraint(equalToConstant: 79),
            nextBtn.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
}
