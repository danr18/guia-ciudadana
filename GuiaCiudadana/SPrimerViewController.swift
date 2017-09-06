//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class SPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["Hay dos tipos de divorcio, uno es el divorcio administrativo que es de muto consentimiento. Las personas acuden ante el juez del registro civil, con acta de matrimonio (siendo mayores de edad y no tener hijos y si los tiene no necesitar alimentos por ser mayores de edad) El segundo es el divorcio judicial, es cuando existen hijos menores de edad que requieran alimentos, y se requiere asistir con un juez familiar. Se necesita saber quién quien vivirá con cada uno de los miembros, quien tendrá custodia de los niños, con el domicilio cntugal, el menaje de la casa y pensión alimentaria.","En el caso del divorcio judicial, se debe de probar la violencia intrafamiliar por medio de testigos y un exámen psicológico. Cuando hay denuncia de agresión, se presentan ante un juez familiar y puede condenar al agresor a pagar la misma indemnización por daño moral.","Hay otro tipo de razón para divorciarse, que es la causal sin causal, que se recurre cuando los conyugues dejan de convivir por un año sin importar la razón.","Es importante saber que el trámite de un divorcio necesario dura aproximadamente tres años y puede durar hasta diez. Tiene un costo equivalente a 5 mil dólares como mínimo.","En el caso del divorcio voluntario el derecho a pensión alimentaria es como lo acuerden. Y cuando es necesario, es cuando la conyugue sea inocente, es decir, que no haya sido su culpa el desvínculo familiar. El inocente puede demandar hasta 50% si se puso dentro de la sociedad conyugal y derecho automático a 50%."]
    
    //let titleArray = [""]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       //self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension SPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        //return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! SPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        /*let title = titleArray[indexPath.row]
        cell.title = title*/
        
        
        
        return cell
        
        
    }
   
    
    
}

extension SPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


