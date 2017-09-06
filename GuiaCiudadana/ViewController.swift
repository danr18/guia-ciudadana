//
//  ViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    
    let titleArray = ["Artículo 49",
    "Artículo 50", "Artículo 52",
    "Artículo 70",
    "Artículo 71",
    "Artículo 73",
    "Artículo 78",
    "Artículo 79",
    "Artículo 80",
    "Artículo 83",
    "Artículo 87",
    "Artículo 89",
    "Artículo 94",
    "Artículo 96."]
    
    let lessonsArray = ["El Supremo Poder de la Federación se divide para su ejercicio en Legislativo, Ejecutivo y Judicial.",
   "El poder legislativo de los Estados Unidos Mexicanos se deposita en un congreso general, que se dividirá en dos cámaras, una de diputados y otra de senadores.",
   "La Cámara de Diputados estará integrada por 300 diputados electos por mayoritaria relativa y 200 diputados electos por representación proporcional. Cada año, para celebrar un primer período de sesiones ordinarias y a partir del 1 de febrero de cada año para celebrar un segundo período de sesiones ordinarias.",
    
    "Toda resolución del Congreso tendrá el carácter de ley o decreto.",
   "El derecho de iniciar leyes o decretos compete: al presidente de la República; a los diputados y senadores al Congreso de la Unión; y a las Legislaturas de los Estados.",
    "Establece las facultades del congreso.",
     "Durante los recesos del Congreso de la Unión habrá una Comisión Permanente compuesta de 37 miembros de los que 19 serán diputados y 18 senadores, nombrados por sus respectivas cámaras la víspera de la clausura de los períodos ordinarios de sesiones.",
   "Referente a la entidad de fiscalización superior de la Federación.",
  "Se deposita el ejercicio del Supremo Poder Ejecutivo de la Unión en un solo individuo, que se denominará 'presidente de los Estados Unidos Mexicanos.'",
   "El presidente entrará a ejercer su encargo el 1 de diciembre, durará en él seis años y no ser reelecto.",
    "El juramento del presidente: 'Protesto guardar y hacer guardar la Constitución Política de los Estados Unidos Mexicanos y las leyes que de ella emanen, y desempeñar leal y patrióticamente el cargo de presidente de la república que el pueblo me ha conferido, mirando en todo por el bien y prosperidad de la Unión; y si así no lo hiciere que la nación me lo demande.'",
   "Facultades y obligaciones del presidente.",
 "Se deposita el ejercicio del Poder Judicial de la Federación en una Suprema Corte de Justicia, en un tribunal electoral, en tribunales colegiados y unitarios de circuito y en juzgados de distrito.",
"Lineamientos para nombrar a los Ministros de la Suprema Corte de Justicia de la Nación."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
        self.navigationItem.title = "TÍTULO TERCERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
    

}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! PCVC
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        let title = titleArray[indexPath.row]
        cell.title = title
        
        
        
        return cell
        
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}

