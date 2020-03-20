//
//  ViewControllerAbout.swift
//  FIFA2018BD
//
//  Created by USER on 5/22/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewControllerAbout: UIViewController {

    
    @IBAction func ActionAbout(_ sender: UIButton) {
    
        UIApplication.shared.open(URL(string: "https://www.facebook.com/khaledhasan.manna/")!, options: [:], completionHandler: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   


}
