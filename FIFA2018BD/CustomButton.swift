//
//  CustomButton.swift
//  FIFA2018BD
//
//  Created by USER on 5/20/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit
@IBDesignable

class CustomButton: UIButton {

    
    @IBInspectable var alertButton:Bool = false{
        
        didSet{
            if(alertButton){
                
                layer.borderWidth = 3
                layer.cornerRadius = 10
                layer.masksToBounds = true;
            }
            else{
                layer.borderWidth = 4
                layer.cornerRadius = 13
                layer.masksToBounds = true;
                
            }
        }
    }
   

}
