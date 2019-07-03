//
//  ViewController.swift
//  FIFA2018BD
//
//  Created by USER on 5/20/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
   
    @IBOutlet var feature: [UIButton]!
    
    @IBAction func fifaAction(_ sender: UIButton) {
        
        
        feature.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
              
                
            })
        }
        
        
    }
    

    
    
    //for hiding the navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background.png")!)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

