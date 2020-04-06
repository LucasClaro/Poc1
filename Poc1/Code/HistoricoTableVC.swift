//
//  HistoricoTableVC.swift
//  Poc1
//
//  Created by Lucas Claro on 03/04/20.
//  Copyright © 2020 Lucas Claro. All rights reserved.
//

import Foundation
import UIKit

class HistoricoTableVC: UITableViewController{
    
    var dataSource = [String]()
    weak var historicoDelegate: HistoricoDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! HistoricoCell
        
        customCell.lblConta.text = dataSource[indexPath.row]
        
        return customCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            dataSource.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            
            historicoDelegate?.contaFoiDeletada(index: indexPath.row)
        }
    }
    
}
