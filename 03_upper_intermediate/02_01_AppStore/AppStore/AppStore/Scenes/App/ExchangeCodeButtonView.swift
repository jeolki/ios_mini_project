//
//  ExchangeCodeButtonView.swift
//  AppStore
//
//  Created by Jeonggi Hong on 2021/11/19.
//

import UIKit
import SnapKit

final class ExchangeCodeButtonView: UIView {
    
    // 1. 내부요소
    private lazy var exchangeCodeButton: UIButton = {
        let button = UIButton()
        button.setTitle("코드 교환", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0, weight: .semibold)
        button.setTitleColor(.systemBlue, for: .normal)
        
        button.backgroundColor = .tertiarySystemGroupedBackground
        button.layer.cornerRadius = 7.0
        
        return button
    }()
    
    // 2. 요소가 한개이기 때문에 init에 바로 구현
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(exchangeCodeButton)
        
        exchangeCodeButton.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(32.0)
            $0.bottom.equalToSuperview().offset(32.0)
            $0.height.equalTo(40.0)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(error:) has not been implemented")
    }
    
    
}
