//
//  SomaVC.swift
//  Poc1
//
//  Created by Lucas Claro on 31/03/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

class SomaVC: UIViewController{
    
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var lblRes: UILabel!
    
    //var conta = [String]()
    
    //Opcional porque não necessariamente alguém quer ouvir essas notícias, então é assim: se alguém quiser ouvir, muito bem, se não quiser, tudo bem, é uma variável opcional.
    weak var historicoDelegate: HistoricoDelegate?
    
    @IBAction func somar(_ sender: UIButton) {
        guard let texto1 = txtNum1.text,
            let texto2 = txtNum2.text,
            let num1 = Int(texto1),
            let num2 = Int(texto2)
            else {
                lblRes.text = "Entrada inválida"
                return
        }
            
        let soma = num1 + num2;
        lblRes.text = "Resultado: " + String(soma)
        
        //conta.append(texto1 + " + " + texto2 + " = " + String(soma))
        
        //Reportar as notícias.
        historicoDelegate?.contaFoiAdicionada(conta: texto1 + " + " + texto2 + " = " + String(soma))
    }
    
}
