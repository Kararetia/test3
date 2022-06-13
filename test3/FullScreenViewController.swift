//
//  FullScreenViewController.swift
//  test3
//
//  Created by Anastasiia on 16.04.22.
//  Copyright © 2022 Nastia Dovhun. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController {
    var photoGallery:PhotoViewController!
    var images = [UIImage]()
    let countCells = 1
    let identifire = "FullScreenCell"
    var indexPath:IndexPath!
  //  let offset:CGFloat = 2.0

    @IBOutlet weak var fullScreenCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenCollectionView.dataSource = self
        fullScreenCollectionView.delegate = self
        fullScreenCollectionView.register(UINib(nibName:"FullScreenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
        fullScreenCollectionView.performBatchUpdates(nil) { (result) in
            self.fullScreenCollectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)
            
        }
    }

}

extension FullScreenViewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! FullScreenCollectionViewCell
        let image = images[indexPath.item]
        cell.photoView.image = image
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCell = widthCell
        //let spacing = CGFloat((countCells + 1)) * offset / CGFloat(countCells)
        return CGSize(width: widthCell, height: heightCell)
    }
    
}
