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
    
    @IBAction func Subtrair(_ sender: Any) {
        var sub = 0;
        sub = Int(txtNum1.text!)! - Int(txtNum2.text!)!;
        lblResultado.text = "Resultado: " + String(sub);
    }
    
}
