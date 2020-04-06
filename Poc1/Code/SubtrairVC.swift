//
//  SubtrairVC.swift
//  Poc1
//
//  Created by Lucas Claro on 31/03/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit;

class SubtrairVC: UIViewController{
    
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    weak var historicoDelegate: HistoricoDelegate?
    
    @IBAction func subtrair(_ sender: Any) {
        guard let texto1 = txtNum1.text,
            let texto2 = txtNum2.text,
            let num1 = Int(texto1),
            let num2 = Int(texto2)
            else {
                    lblResultado.text = "Entrada inválida"
                    return
            }
        
        let sub = num1 - num2
        lblResultado.text = "Resultado: " + String(sub)
        
        historicoDelegate?.contaFoiAdicionada(conta: texto1 + " + " + texto2 + " = " + String(sub))
    }
    
}
