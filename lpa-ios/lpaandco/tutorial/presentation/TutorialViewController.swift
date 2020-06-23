//
//  TutorialViewController.swift
//  lpaandco
//
//  Created by MyLuckyDay on 5/3/20.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit
import CHIPageControl

class TutorialViewController: BaseViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextPageButton: AppPrimaryButton!
    @IBOutlet weak var pageControl: PageControl!
    @IBOutlet weak var skipButton: AppUnderlineButton!
    
    // MARK: - Private properties
    private lazy var dataSource: TutorialDataSource = {
        TutorialDataSource()
    }()
    
    enum StepState {
        case `default`
        case last
    }
    
    private var stepState = StepState.default
    
    private var isLastStep: Bool = false {
        willSet {
            updateLayout(forLastStep: newValue)
        }
    }
    
    private var currentStep = 0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
        setupPageControl()
    }
    
    override func render(_ state: AppState) {
        
    }
    
    // MARK: - Private methods
    private func setupCollectionView() {
        collectionView.collectionViewLayout = TutorialLayout()
        
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    private func setupPageControl() {
        pageControl.numberOfPages = dataSource.tutorialsCount
        pageControl.padding = pageControl.radius * 2
        
        pageControl.enableTouchEvents = true
        pageControl.delegate = self
    }
    
    private func updateLayout(forLastStep isLastStep: Bool) {
        if isLastStep && stepState == .default {
            UIView.animate(withDuration: defaultAnimationDuration, animations: { [weak self] in
                
                guard let self = self else { return }
                self.skipButton.alpha = 0.0
                self.nextPageButton.setTitle(String.tutorialButtonGoButtonTitle, for: .normal)
                
            }, completion: { [weak self] _ in
                
                guard let self = self else { return }
                self.stepState = .last
                
            })
        } else if !isLastStep && stepState == .last {
            
            UIView.animate(withDuration: defaultAnimationDuration, animations: { [weak self] in
                guard let self = self else { return }
                self.skipButton.alpha = 1.0
                self.nextPageButton.setTitle(String.tutorialButtonNextTitle, for: .normal)
                
            }, completion: { [weak self] _ in
                
                guard let self = self else { return }
                self.stepState = .default
                
            })
        }
    }
    
    private func handleCurrentStep(in scrollView: UIScrollView) {
        let currentPage = scrollView.contentOffset.x / scrollView.frame.size.width
        let intCurrentPage = Int(currentPage)
        
        isLastStep = intCurrentPage == dataSource.tutorialsCount - 1
        currentStep = intCurrentPage
    }
    
    private func showAuthenticationViewController() {
        let storyboard = UIStoryboard.load(identifier: .authentication)
        guard let viewController = storyboard.instantiateViewController(identifier: .signIn)
            as? SignInViewController else { return }
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: - UICollectionViewDelegate
extension TutorialViewController: UICollectionViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        handleCurrentStep(in: scrollView)
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        handleCurrentStep(in: scrollView)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.progress = Double(offset)
    }
}

// MARK: - CHIBasePageControlDelegate
extension TutorialViewController: CHIBasePageControlDelegate {
    func didTouch(pager: CHIBasePageControl, index: Int) {
        let indexPath = IndexPath(item: index, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

// MARK: - Actions
extension TutorialViewController {
    
    @IBAction private func showNextPage(_ sender: AppPrimaryButton) {
        if isLastStep {
            showAuthenticationViewController()
            return
        }
        
        let nextStep = currentStep + 1
        let nextStepIndexPath = IndexPath(item: nextStep, section: 0)
        collectionView.scrollToItem(at: nextStepIndexPath, at: .centeredHorizontally, animated: true)
    }
    
    @IBAction private func skipTutorial(_ sender: AppUnderlineButton) {
        showAuthenticationViewController()
    }
}
