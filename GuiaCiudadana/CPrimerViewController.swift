//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class CPrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["Es importante anotar el número de la unidad o aprenderlo al ser detenido por un agente de vialidad. Cuando el oficial se acerque, procura también anotar su nombre, si no es visible, tienes derecho a pedirle que lo muestre.","Baja tu ventanilla lo suficiente para tener un diálogo y mostrar documentos al agente. Manten el seguro de las puertas cerrados.","Si tu infracción no es grave, el oficial no tiene derecho a obligarte a salir del auto, te puedes quedar en el.","Es importante saber que en caso de que tu sanción requiera llevar tu auto a un depósito/corralón el oficial te debe especificar de cual se trata y solo tu puedes manejar tu auto para llevarlo. El oficial no tiene permiso de manejar tu auto al depósito y no debes de entregar las llaves aunque te las pidan. Si tu auto esta estacionado, el oficial puede pedir una grua para moverlo.","El oficial no puede revisar el interior de tu auto o la cajuela, debe de tener una orden judicial emitida por un juez.","Cuando el oficial te ha detenido, tiene la obligación de señalarte la infracción que acabasde cometer, mostrandote el artículo del reglamento y la sanción indicada.","Si te piden tu licencia de conducior y/o tarjeta de circulación te la deben de devolver ahí mismo.","En el papel de la infracción, el oficial debe incluir los datos del lugar, fecha y sus datos, nombre, número de placa, adscripción y su firma."]
    
    //let titleArray = [""]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       //self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension CPrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        //return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! CPrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        /*let title = titleArray[indexPath.row]
        cell.title = title*/
        
        
        
        return cell
        
        
    }
   
    
    
}

extension CPrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


