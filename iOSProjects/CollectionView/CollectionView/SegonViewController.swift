//
//  SegonViewController.swift
//  CollectionView
//
//  Created by Xavi Moll Villalonga on 01/12/15.
//  Copyright © 2015 Xavi Moll Villalonga. All rights reserved.
//

import UIKit

class SegonViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var imagenes:NSArray = [UIImage(named: "Oolong.png")!,
        UIImage(named: "Pikachu.png")!,
        UIImage(named:"Pokeball.png")!,
        UIImage(named: "Puar.png")!,
        UIImage(named: "Ring.png")!,
        UIImage(named:"Sonic.png")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell2", forIndexPath: indexPath)
        let img = cell.viewWithTag(2) as! UIImageView
        img.image = imagenes[indexPath.row] as? UIImage
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let imagenSeleccionada = imagenes.objectAtIndex(indexPath.row%6) as? UIImage
        let vistaDetalle: DetalleViewController = self.storyboard?.instantiateViewControllerWithIdentifier("Detalle") as! DetalleViewController
        vistaDetalle.imagen = imagenSeleccionada
        self.navigationController?.pushViewController(vistaDetalle, animated: true)
    }
    
}
