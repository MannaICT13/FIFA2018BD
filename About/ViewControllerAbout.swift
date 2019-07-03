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
    
        UIApplication.shared.open(URL(string: "https://www.facebook.com/mcubesit/") as! URL, options: [:], completionHandler: nil)
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
