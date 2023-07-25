//
//  OnboardingCollectVC.swift
//  Apps UIKIT
//
//  Created by Siti Hafsah on 24/07/23.
//

import UIKit

class OnboardingCollectVC: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    
    let swipeModel = [SwipeModel(imageSwipe: "onboarding1",
                                 titleSwipe: " Let's Get Started",
                                 bodySwipe: "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact."),
                      SwipeModel(imageSwipe: "onboarding2",
                                 titleSwipe: "Your Onboarding Journey Begins!",
                                 bodySwipe: "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact."),
                      SwipeModel(imageSwipe: "onboarding3",
                                 titleSwipe: "Your First Steps to Success",
                                 bodySwipe: "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.")]
    
    
    // MARK: UI
    let skipButton = UIButton(type: .system)
    let nextButton = UIButton(type: .system)
    let pageControl = UIPageControl()
    let bottomStackView = UIStackView()
    let bottomBtnStackView = UIStackView()
    var selectedViewIndex = 0
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
    }
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("swipeModel",swipeModel.count)
        return swipeModel.count
    }
    
    // MARK: cellForItemAt
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.reuseIdentifierr, for: indexPath) as! OnboardingCollectionViewCell
        let swipeModel = swipeModel[indexPath.item]
        cell.update(image: swipeModel.imageSwipe, title: swipeModel.titleSwipe, body: swipeModel.bodySwipe)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    // MARK: UICollectionView Spacing between cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
//    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        let x = targetContentOffset.pointee.x
//
//        pageControl.currentPage = Int(x / view.frame.width)
//    }
    
    // MARK: Function skipBtnDidTap
    @objc func skipBtnDidTap() {

    }
    
    // MARK: Function nextBtnDidTap
    @objc func nextBtnDidTap() {
        
//        if selectedViewIndex < swipeModel.count {
//            let indexPath = IndexPath(item: selectedViewIndex, section: 0)
//            collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
//            pageControl.currentPage = selectedViewIndex
//            selectedViewIndex += 1
//        }
//
        let nextIndex = min(pageControl.currentPage + 1, swipeModel.count - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)

//
//
////        collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
//        collectionView.selectItem(
//            at: IndexPath(item: nextIndex, section: 0),
//            animated: true,
//            scrollPosition: .centeredHorizontally)
    }
    
//    @objc private func nextButtonPressed() {
//            var selectedIndex = selectedViewIndex + 1
//
//        if selectedIndex >= pageControl.numberOfPages {
//                selectedIndex -= 1
//            }
//
//            // Prevent selecting the same item multiple times, causing jittery when spamming next button
//            if selectedIndex == selectedViewIndex { return }
//
//            selectedViewIndex = selectedIndex
////            setSelectedLine(index: selectedViewIndex)
//            collectionView.selectItem(
//                at: IndexPath(item: selectedViewIndex, section: 0),
//                animated: true,
//                scrollPosition: .centeredHorizontally)
//        }
//
//        @objc private func previousButtonPressed() {
//            var selectedIndex = selectedViewIndex - 1
//
//            if selectedIndex < 0 {
//                selectedIndex += 1
//            }
//
//            // Prevent selecting the same item multiple times, causing jittery when spamming previous button
//            if selectedIndex == selectedViewIndex { return }
//
//            selectedViewIndex = selectedIndex
////            setSelectedLine(index: selectedViewIndex)
//            collectionView.selectItem(
//                at: IndexPath(item: selectedViewIndex, section: 0),
//                animated: true,
//                scrollPosition: .centeredHorizontally)
//        }
    
    
    // MARK: Configure Bottom Stack View
    func configureBottomStackView() {
        skipButton.setTitle("Skip", for: .normal)
        skipButton.setTitleColor(.systemGray, for: .normal)
        skipButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        skipButton.addTarget(self, action: #selector(skipBtnDidTap), for: .touchUpInside)
        
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .systemGray2
        pageControl.numberOfPages = swipeModel.count
        pageControl.currentPage = 0
        
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 720),
            pageControl.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40)
        ])
            
        nextButton.setTitle("Next →", for: .normal)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        nextButton.tintColor = .white
        nextButton.backgroundColor = .black
        nextButton.layer.cornerRadius = 15
        nextButton.addTarget(self, action: #selector(nextBtnDidTap), for: .touchUpInside)
        
        bottomBtnStackView.addArrangedSubview(skipButton)
        bottomBtnStackView.addArrangedSubview(nextButton)

        bottomBtnStackView.axis = .horizontal
        bottomBtnStackView.distribution = .fillEqually
        bottomBtnStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bottomBtnStackView)
        
    }

    
    func configureController() {
        view.addSubview(collectionView)
        collectionView.isPagingEnabled = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator =  false
        collectionView.register(OnboardingCollectionViewCell.self, forCellWithReuseIdentifier: OnboardingCollectionViewCell.reuseIdentifierr)
        view.addSubview(pageControl)
        
        configureBottomStackView()
        NSLayoutConstraint.activate([
            bottomBtnStackView.heightAnchor.constraint(equalToConstant: 40),
            bottomBtnStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBtnStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bottomBtnStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
    
}

