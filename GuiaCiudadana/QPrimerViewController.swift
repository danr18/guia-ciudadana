//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit
class QPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    
    let titleArray = ["","Artículo 115","Artículo 116","Artículo 122"]
    let lessonsArray = ["El título quinto. contiene 8 artículos (del 115 al 122) y trata de los estados de la federación y del Distrito Federal. Los artículos más relevantes del título quinto son los siguientes.","Los estados adoptarán, para su régimen interior, la forma de gobierno republicano, representativo, popular, teniendo como base de su división territorial y de su organización política y administrativa el Municipio Libre. Establece los lineamientos de gobierno obligaciones de los municipios.","El poder público de los estados se dividirá, para su ejercicio, en Ejecutivo, Legislativo y Judicial. Establece las reglas de gobierno de los poderes estatales.","Define el ordenamiento la naturaleza jurídica del Distrito Federal."]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       self.navigationItem.title = "TÍTULO QUINTO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}
extension QPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! QPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        let title = titleArray[indexPath.row]
        cell.title = title
        
        
        
        return cell
        
        
    }
   
    
    
}

extension QPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


