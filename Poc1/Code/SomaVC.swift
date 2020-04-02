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
    
    var conta = [String]()
    
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
        
        conta.append(texto1 + " + " + texto2 + " = " + String(soma))
    }
        
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Entrei")
//        if segue.identifier == "SegueParaCalculadora"{
//            if let destiantionVC = segue.destination as? MenuVC{
//                destiantionVC.hist = "Teste"
//            }
//        }
//    }
    
}
