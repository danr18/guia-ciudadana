//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class XPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["No te resistas al arresto de cualquier manera, no corras y no digas ninguna palabra aunque seas inocente. Cualquier palabra que digas puede ser usada en tu contra. No amenaces a la policía de cualquier manera.","Cualquier policia no puede entrar a tu casa, necesita una orden. Si tu consideras que no es necesario, puedes decidir no invitarlos a pasar. Asegurate de que tengan una placa.","Puedes ser victima de una detención cuando se cree que eres responsable de una infracción penal. Su duración en la detención no puede ser más de 72 horas, se puede alargar 48 horas en caso de terrorismo. No te pueden retener más de este tiempo.","También puede ser el caso de una detención ilegal. Es por eso que debes conocer tus derechos, como el de hacer una llamada, elegir tu abogado, tener reconocimiento médico si es necesario o que no se te hagan saber los derechos que tienen.","Támbien tienes derecho a saber por que estas siendo arrestado y llevado a la estación de polícia, así como a no declarar nada o sólo ante un Juez. Puedes guardar silencio, ya que un “no se” puede ser considerado como declaración."]
    
    //let titleArray = [""]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       //self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension XPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        //return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! XPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        /*let title = titleArray[indexPath.row]
        cell.title = title*/
        
        
        
        return cell
        
        
    }
   
    
    
}

extension XPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


