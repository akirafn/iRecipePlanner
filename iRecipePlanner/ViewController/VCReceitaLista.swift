//
//  VCReceitaLista.swift
//  iRecipePlanner
//
//  Created by Flavio Akira Nakahara on 8/4/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

import UIKit

class VCReceitaLista: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var txtCampoBusca: UITextField!
    @IBOutlet weak var txtListaVazia: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.isHidden = true
        txtListaVazia.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buscarReceita(_ sender: Any) {
    }

    
    // MARK: - Table
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell
    }
}
