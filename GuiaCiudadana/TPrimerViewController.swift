//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class TPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    
    let titleArray = ["Artículo 124","Artículo 128","Artículo 130","Artículo 133","Artículo 134"]
    let lessonsArray = ["Las facultades que no están expresamente concedidas por esta Constitución a los funcionarios federales se reservan a los Estados.","Todo funcionario público, sin excepción alguna, antes de tomar posesión de su encargo, prestará la protesta de guardar la Constitución y las leyes que de ella emanen.","Establece las normas y reglamentaciones de las iglesias y demás agrupaciones religiosas."," Las leyes supremas de toda la Unión son las leyes de esta constitución y todos los tratados que estén de acuerdo con la misma. En caso de que las constituciones estatales contradigan alguna de estas leyes, los jueces en los estados tendrán aplicaran las leyes de esta Constitución.","Trata de los recursos económicos para la federación, los estados, los municipios, el Distrito Federal."]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       self.navigationItem.title = "TÍTULO SÉPTIMO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}
extension TPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! TPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        let title = titleArray[indexPath.row]
        cell.title = title
        
        
        
        return cell
        
        
    }
   
    
    
}

extension TPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


