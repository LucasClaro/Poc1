//
//  MenuVC.swift
//  Poc1
//
//  Created by Lucas Claro on 01/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import UIKit

//Cria um protocolo que vai ser usado pra ouvir notícias interessantes sobre outras camadas... Protocolo é só uma formalização de comunicação, pode ver que tem um "func" aí mas não está implementado... Isso significa que, se alguém quiser ouvir essa comunicação, só precisa "implementar" esse protocolo
protocol HistoricoDelegate: class {
    func contaFoiAdicionada(conta: String)
    
    func contaFoiDeletada(index: Int)
}

//Estender seu MenuVC pra que ele demonstre interesse em ouvir notícias sobre HistoricoDelegate... Nesse momento vc precisa implementar o protocolo HistoricoDelegate no MenuVC, ou seja, implementar aquela função obrigatória declarada no protocolo... No caso de MenuVC, sempre que uma contaFoiAdicionada, vc vai adicionar essa String na sua variável "hist"
extension MenuVC: HistoricoDelegate{
    func contaFoiAdicionada(conta: String) {
        hist.append(conta)
    }
    
    func contaFoiDeletada(index: Int) {
        hist.remove(at: index)
    }
}

class MenuVC: UIViewController {
    
    @IBOutlet weak var lblHistorico: UILabel!
    
    var hist = [String]()
    
    //Código do Unwind primeiro teste pra ler dados da soma e subtração
    /*@IBAction func unwindToMenu(_ unwindSegue: UIStoryboardSegue) {
        guard let somaVC = unwindSegue.source as? SomaVC else{ return }
        
        hist += somaVC.conta
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let historicoVC = segue.destination as? HistoricoTableVC {
            historicoVC.dataSource = hist
            
            historicoVC.historicoDelegate = self
        }
        
        //Última parte, definir MenuVC como delegate de SomaVC e SubtrairVC... Já falamos que o MenuVC é um HistoricoDelegate, mas precisamos ligar explicitamente com aquelas ViewControllers lá
        if let tab = segue.destination as? UITabBarController, let tabs = tab.viewControllers{
            for viewController in tabs{
                
                if let somaVC = viewController as? SomaVC{
                    somaVC.historicoDelegate = self
                }
                
                if let subVC = viewController as? SubtrairVC{
                    subVC.historicoDelegate = self
                }
            }
        }
        
    }
}
