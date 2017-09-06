//
//  FTBViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/15/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//

import Foundation
import UIKit

class FTBViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    

    
    override func viewDidLoad() {
        
        names = ["¿Qué hacer en caso de un accidente automovílistico?","¿Qué derechos tengo si me arrestan?","¿A que tengo derecho si me detiene un agente de tránsito?","¿A que tengo derecho si renuncio o me despiden?","¿A que tengo derecho si me divorcio?",]
        identities = ["Auto","Arrestan","Agentes","Despiden","Separar"]
        
        self.navigationItem.title = "Guía"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FCell")
        cell?.textLabel!.numberOfLines = 0
        cell?.textLabel!.lineBreakMode = .ByWordWrapping
        cell?.textLabel!.font = UIFont.systemFontOfSize(25.0)
        self.tableView.rowHeight = 100.0
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}


