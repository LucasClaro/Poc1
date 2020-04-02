//
//  ClosureVC.swift
//  Poc1
//
//  Created by Lucas Claro on 02/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

//Herda de UITextFieldDelegate pra poder configurar o textField
class ClosureVC: UIViewController, UITextFieldDelegate{
    
    let maxChar = 1//Qtd máxima de caracteres
    
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtNumero: UITextField!
    
    var numeros = [Int]()//Quarda os números digitados
    let digitNames = [0: "Zero", 1: "Um", 2: "Dois",   3: "Três", 4: "Quatro",
    5: "Cinco", 6: "Seis", 7: "Sete", 8: "Oito", 9: "Nove"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtNumero.delegate = self//Altera o delegate do txtField (Não sei oqw é isso)
    }
    
    //Limita a qtd de caracteres (retorna falso quando o numeros de chrs passa de maxChar)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return textField.text!.count + string.count <= self.maxChar
    }
    
    
    @IBAction func lerNumero(_ sender: Any) {
        guard let txt = txtNumero.text,
            let num = Int(txt) else {
                lblResultado.text = "Entrada inválida"
                return
        }
        
        numeros.append(num)//Push no vetor
        
        //Função com closure: Aplica a regra pra cada elemento do vetor, no caso transforma em texto
        let strings = numeros.map { (numero) -> String in
            let num = numero
            var saida = ""
            
            saida = digitNames[num % 10]!
            
            return saida
        }
        
        lblResultado.text = "Números: " +  strings.joined(separator: ", ")
    }
    
    
    
}
