//
//  AppViewController.swift
//  AppStore
//
//  Created by Jeonggi Hong on 2021/11/17.
//

import SnapKit
import UIKit

final class AppViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 0.0
        
        // 필요한것 임의로 지정
        let featureSectionView = UIView()
        let rankingFeatureSectionView = UIView()
        let exchangeCodeButtonView = UIView()
        
        featureSectionView.backgroundColor = .red
        rankingFeatureSectionView.backgroundColor = .blue
        exchangeCodeButtonView.backgroundColor = .yellow
        
        [
            featureSectionView,
            rankingFeatureSectionView,
            exchangeCodeButtonView
        ].forEach {
            $0.snp.makeConstraints { $0.height.equalTo(500.0) }
            stackView.addArrangedSubview($0)
        }
        
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        setupLayout()
    }
}

private extension AppViewController {
    func setupNavigationController() {
        navigationItem.title = "앱"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.bottom.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview() // 세로스크롤 가로 고정
        }
        
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
    }
}


