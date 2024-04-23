//
//  HeaderView.swift
//  TableViewAdvance
//
//  Created by Moon Dev on 23/04/2024.
//

import Foundation
import UIKit
import SnapKit

class HeaderView: UIView {
    
    private var label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello"
        lbl.textAlignment = .left
        return lbl
    }()

    private var button: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Click", for: .normal)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(label)
        addSubview(button)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        snp.makeConstraints { make in
            make.height.equalTo(40)
        }
        
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-24)
            make.centerY.equalToSuperview()
        }
    }
    
    func updataData(text: String) {
        label.text = text
    }
}
