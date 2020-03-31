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
    
    @IBAction func Somar(_ sender: Any) {
        var soma = 0;
        soma = Int(txtNum1.text!)! + Int(txtNum2.text!)!;
        lblRes.text = "Resultado: " + String(soma);
    }
    
}
