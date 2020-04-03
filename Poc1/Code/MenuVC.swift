//
//  MenuVC.swift
//  Poc1
//
//  Created by Lucas Claro on 01/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var lblHistorico: UILabel!
    
    var hist = [String]()
    
    @IBAction func unwindToMenu(_ unwindSegue: UIStoryboardSegue) {
        guard let somaVC = unwindSegue.source as? SomaVC else{ return }
        
        hist += somaVC.conta
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let historicoVC = segue.destination as? HistoricoTableVC {
            historicoVC.dataSource = hist
        }
        
    }
}
