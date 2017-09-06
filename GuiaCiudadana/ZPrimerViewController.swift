//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class ZPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["Lo primero que debe de hacer al encontrarse en un accidente automovilístico es mantener la calma. Trate de respirar profundo y escuchar.","Después salga de su vehiculo con precaución y verifique si hay lesionados. Para solicitar asistencia médica llame al 911.","Es importante quedarse en el lugar de los hechos, espere a la policía. Si usted se va, cuenta como un delito.","Sin importar que tipo de accidente haya ocurrido, llamé a las autoridades lo más rápido posible. Trate de no obstaculizar el tráfico.","Tome fotos del accidente que acaba de ocurrir para presentarlas a la compañía de seguros. Registre los daños ocurridos.","Apunte las placas del otro automovíl para en caso de ser necesarias. No asuma la culpa antes de tiempo, puede que no sea su culpa pues estos accidentes tienden a ser confusos.","Contacte a la compañía de seguros aunque usted crea que no es necesario, es fundamental."]
    
    //let titleArray = [""]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       //self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension ZPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        //return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! ZPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        /*let title = titleArray[indexPath.row]
        cell.title = title*/
        
        
        
        return cell
        
        
    }
   
    
    
}

extension ZPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


