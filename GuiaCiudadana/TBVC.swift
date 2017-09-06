//
//  TBVC.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    
    override func viewDidLoad() {
        
        names = ["Introducción","Título Primero","Título Segundo","Título Tercero", "Título Cuarto","Título Quinto","Título Sexto","Título Séptimo","Título Octavo","Título Noveno"]
        identities = ["Intro","A","D","C","F","Q","S","T","O","N"]
        
        self.navigationItem.title = "Artículos de la Constitución"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell?.textLabel!.numberOfLines = 0
        cell?.textLabel!.lineBreakMode = .ByWordWrapping
        cell?.textLabel!.font = UIFont.systemFontOfSize(25.0)
        self.tableView.rowHeight = 70.0
        cell?.textLabel!.text = names[indexPath.row]
        
        return cell!
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)

        
        
        
    }
    
    
    
    
    
    
    
    
    
}