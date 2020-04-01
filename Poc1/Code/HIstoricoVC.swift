//
//  HIstoricoVC.swift
//  Poc1
//
//  Created by Lucas Claro on 01/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

class HistoricoVC: UIViewController{
    
    @IBOutlet weak var lblHistorico: UILabel!
    
    var hist = ""
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lblHistorico.text = hist
    }
}
