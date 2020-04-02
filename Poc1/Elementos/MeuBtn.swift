//
//  MeuBtn.swift
//  Poc1
//
//  Created by Lucas Claro on 02/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

class MeuBtn: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        desenharBtn()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        desenharBtn()
    }
    
    private func desenharBtn(){
        definirSombra()
        setTitleColor(.white, for: .normal)
        backgroundColor = .init(red:0.3, green:0.3, blue: 0.3, alpha: 1.0)
        
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.darkGray.cgColor
    }
    
    private func definirSombra(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
}
