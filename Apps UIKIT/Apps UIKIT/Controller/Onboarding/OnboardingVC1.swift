//
//  OnboardingVC1.swift
//  Apps UIKIT
//
//  Created by Siti Hafsah on 24/07/23.
//

import UIKit

class OnboardingVC1: UIViewController {
    
    lazy var imagebg1 : UIImageView = {
        let imagebg1 = UIImageView ()
        imagebg1.image = UIImage(named: "bg1")
        
        return imagebg1
    }()
    
    lazy var imageLampu : UIImageView = {
        let imagelampu = UIImageView ()
        imagelampu.image = UIImage(named:"lampu")

        return imagelampu
    }()

    lazy var imageBeanBag : UIImageView = {
        let imageBeanbag =  UIImageView ()
        imageBeanbag.image = UIImage(named:"Beanbag")

        return imageBeanbag
    }()
    
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.text = " Let's Get Started"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = .black
        label.textAlignment = .center
        label.sizeToFit()
        
        return label
    }()
    
    lazy var bodyLabel : UILabel = {
        let bodyLabel = UILabel()
        bodyLabel.text = "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact."
        bodyLabel.font = UIFont (name: "Poppins", size: 12)
        bodyLabel.textColor = .black
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
        skipLabel.numberOfLines = 0
        skipLabel.sizeToFit()
        
        return skipLabel
    }()
    
    lazy var nextBtn : UIButton = {
        let btn = UIButton(type: .custom) as UIButton
        btn.backgroundColor = .black
        btn.setTitle(" Next→ ", for: .normal)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        btn.layer.cornerRadius = 15
        return btn
    }()
    
    @objc func clickMe(sender:UIButton!) {
        
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
        
        //image Lampu
        view.addSubview(imageLampu)
        imageLampu.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageLampu.topAnchor.constraint(equalTo: self.view.topAnchor, constant:0),
            imageLampu.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 27),
            imageLampu.widthAnchor.constraint(equalToConstant: 159),
            imageLampu.heightAnchor.constraint(equalToConstant: 195)
        ])
        
        //image BeanBag
        view.addSubview(imageBeanBag)
        imageBeanBag.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageBeanBag.topAnchor.constraint(equalTo: self.view.topAnchor, constant:179),
            imageBeanBag.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            imageBeanBag.widthAnchor.constraint(equalToConstant: 331),
            imageBeanBag.heightAnchor.constraint(equalToConstant: 331)
        ])
        
        //titlelabel let get's started
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 520),
            titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 39), //kiri
//            titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 94) //kanan
//            titleLabel.bottomAnchor.constraint(equalTo: self.view..bottomAnchor, constant: 80)
        ])
        
        //titlelabel bodyLabel
        view.addSubview(bodyLabel)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 574),
            bodyLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 39), //kiri
            bodyLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        //titlelabel skipLabel
        view.addSubview(skipLabel)
        skipLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            skipLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 750),
            skipLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 42), //kiri
        ])
        
        //titlelabel nextBtn
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
