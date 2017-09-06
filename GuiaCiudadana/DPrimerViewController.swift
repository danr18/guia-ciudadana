//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class DPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["Si has renunciado tienes derecho a tu aguinaldo, vacaciones y prima vacional, prima de antiguedad (solo en caso de que se tengan, por lo menos, 15 años de antigüedad) y prestacones que estuvieran vigentes en tu contrato o en las condiciones laborales.","Si has sido despedido puedes reclamar tu pago de tres meses d salario por indemnización constitucional, prima de antigüedad y partes proporcionales de aguinaldo, vacaciones y prima vacacional, así como prestaciones vigentes que aún no han sido cubiertas.","Otra opción es demandar tu puesto de trabajo con las mismas condiciones y términos con los que laborabas.","Si tu caso es un despido sin justificación, tienes un plazo de dos meses para entablar una demanda."]
    
    //let titleArray = [""]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       //self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension DPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        //return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! DPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        /*let title = titleArray[indexPath.row]
        cell.title = title*/
        
        
        
        return cell
        
        
    }
   
    
    
}

extension DPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


