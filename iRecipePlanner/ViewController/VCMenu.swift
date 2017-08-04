//
//  VCMenu.swift
//  iRecipePlanner
//
//  Created by Flavio Akira Nakahara on 8/4/17.
//  Copyright © 2017 Flavio Akira Nakahara. All rights reserved.
//

import UIKit
import Alamofire

class VCMenu: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("").responseJSON{ response in
            let jsonObject = response.result.value as! Array<NSDictionary>
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let ncHome = self.storyboard?.instantiateViewController(withIdentifier: "homeNC") as! UINavigationController
            self.navigationController?.pushViewController(ncHome.viewControllers.first!, animated: true)
            break
        case 1:
            let ncReceita = self.storyboard?.instantiateViewController(withIdentifier: "receitasNC") as! UINavigationController
            self.navigationController?.pushViewController(ncReceita.viewControllers.first!, animated: true)
            break
        case 2:
            let ncBusca = self.storyboard?.instantiateViewController(withIdentifier: "buscaNC") as! UINavigationController
            self.navigationController?.pushViewController(ncBusca.viewControllers.first!, animated: true)
            break
        default:
            break
        }
    }
}
