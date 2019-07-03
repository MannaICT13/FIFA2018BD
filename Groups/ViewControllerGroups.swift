//
//  ViewControllerGroups.swift
//  FIFA2018BD
//
//  Created by USER on 5/20/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewControllerGroups: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
   var imageforgroups = [#imageLiteral(resourceName: "A"),#imageLiteral(resourceName: "B"),#imageLiteral(resourceName: "C"),#imageLiteral(resourceName: "D"),#imageLiteral(resourceName: "E"),#imageLiteral(resourceName: "F"),#imageLiteral(resourceName: "G"),#imageLiteral(resourceName: "h_burned")]
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageforgroups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellGroups
        
        cell.imageOutlet.image = imageforgroups[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
