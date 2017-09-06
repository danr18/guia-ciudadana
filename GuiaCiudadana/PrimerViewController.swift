//
//  PrimerViewController.swift
//  Sobre
//
//  Created by Daniel Rascón on 8/9/16.
//  Copyright © 2016 Francisco Rascón. All rights reserved.
//


import UIKit

class PrimerViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let kDemoCell = "primerCell"
    let kCellSizeCoef: CGFloat = 0.8
    let kFirstItemTransform: CGFloat = 0.05
    
    let lessonsArray = ["Todas las personas gozarán de los derechos humanos reconocidos en la Constitución y en los tratados internacionales firmados por el Estado mexicano y no podrán suspenderse salvo en los casos y bajo las condiciones establecidas en la misma constitución; obliga a las autoridades mexicanas a respetar y proteger los derechos humanos y además, prevenir, sancionar y reparar las violaciones a los derechos humanos. Prohíbe la esclavitud en el país y protege a los esclavos que ingresen a territorio nacional. Prohíbe todo tipo de discriminación.",
        "La nación mexicana es única e indivisible. Establece que la nación tiene una composición pluricultural sustentada originalmente en sus pueblos indígenas. Describe, protege y otorga derechos a los pueblos indígenas, y establece su derecho de organización social, económica, política y cultural.",
        "Garantiza el derecho de los mexicanos a recibir educación, la cual tiene que ser laica, gratuita, democrática, nacional y de calidad. Obliga a la Federación, a los Estados, y a los Municipios, a impartir la educación primaria, secundaria, y media superior.",
        "Establece la igualdad del varón y la mujer ante la ley. Referente a la familia, establece diversos derechos de salud y vivienda, alimentación y esparcimiento.",
        "A ninguna persona podrá impedirse que se dedique a la profesión, industria, comercio o trabajo que le acomode, siendo lícitos.",
        "Libertad de expresión. Establece los límites a este derecho. Otorga el derecho a acceder a la información pública, y establece el proceso por el cual el Estado Mexicano está obligado a garantizar el acceso a las Tecnologías de la Información y Comunicación, así como a los servicios de banda ancha e internet.",
        "Sobre la Libertad de prensa.",
        "Sobre el Derecho de petición.","Establece el Derecho de asociación para fines lícitos y únicamente permitidos a los ciudadanos de la república.","Derecho a poseer armas para seguridad y legítima defensa.","Sobre la Libertad de tránsito en la República y el derecho de asilo político.","Prohibición de títulos nobiliarios.","Prohibición de Leyes y tribunales privativos.","Irretroactividad de la norma y el derecho al debido proceso; también establece diversas disposiciones jurídicas.","Prohíbe la extradición hacia otros países de personas que tuvieran la condición de esclavos, o cuando en el país de origen estas personas hayan sufrido violaciones a sus derechos humanos.","Garantía de legalidad, inviolabilidad del domicilio y el correo así como el debido proceso legal; establece diversas disposiciones en materia penal.","Garantía de justicia gratuita, legal y expedita.","Garantías de los reos sentenciados y establecimiento del sistema penal.","Garantías del procedimiento penal para el indiciado.","Garantías del procedimiento penal para el inculpado y la víctima u ofendido.","Garantías del procedimiento penal dentro del juicio.","Prohíbe las penas de muerte, de mutilación, de infamia, la marca, los azotes, los palos, el tormento de cualquier especie y la multa excesiva. Establece bajo qué circunstancias podrá aplicarse la confiscación de bienes.","Garantías de que un juicio penal no puede tener más de tres instancias.","Libertad de culto","Rectoría económica del Estado.","Establecimiento de planes de gobierno.","Pertenecen a la nación las tierras, aguas y recursos naturales comprendidas dentro de los límites del territorio nacional, ya sea debajo o encima de la tierra. Regula el manejo de las tierras y recursos de la Nación.","Prohibición de monopolios.","Casos de suspensión de las garantías individuales.","Referente a la nacionalidad mexicana.","Referente a los extranjeros.","Referente a los ciudadanos mexicanos."]
    
    let titleArray = ["Artículo 1","Artículo 2","Artículo 3","Artículo 4","Artículo 5","Artículo 6","Artículo 7","Artículo 8","Artículo 9","Artículo 10","Artículo 11","Artículo 12","Artículo 13","Artículo 14","Artículo 15","Artículo 16","Artículo 17","Artículo 18","Artículo 19","Artículo 20","Artículo 21","Artículo 22","Artículo 23","Artículo 24","Artículo 25","Artículo 26","Artículo 27","Artículo 28","Artículo 29","Artículo 30","Artículo 33","Artículo 34"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stickyLayout = collectionView.collectionViewLayout as! StickyCollectionViewFlowLayout
        stickyLayout.firstItemTransform = kFirstItemTransform
       self.navigationItem.title = "TÍTULO PRIMERO"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]

    }
    
  
}

extension PrimerViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lessonsArray.count
        return titleArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kDemoCell, forIndexPath: indexPath) as! PrimerCollectionViewCell
        
        
        let lesson = lessonsArray[indexPath.row]
        cell.lesson = lesson
        
        let title = titleArray[indexPath.row]
        cell.title = title
        
        
        
        return cell
        
        
    }
   
    
    
}

extension PrimerViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(CGRectGetWidth(view.bounds), CGRectGetHeight(collectionView.bounds) * kCellSizeCoef)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: NSInteger) -> CGFloat {
        return 0
    }
}


