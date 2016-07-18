//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonJoviImage: UIImageView!
    var bonJoviHeigtConstraint = NSLayoutConstraint()
    var bonJoviCenterYConstraint = NSLayoutConstraint()
    var didItShrink: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.view.removeConstraints(self.view.constraints)
        //self.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.bonJoviImage.removeConstraints(self.bonJoviImage.constraints)
        self.bonJoviImage.translatesAutoresizingMaskIntoConstraints = false
        
        self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
        self.bonJoviCenterYConstraint = self.bonJoviImage.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor)
        self.bonJoviHeigtConstraint.active = true
        self.bonJoviCenterYConstraint.active = true
        
    }
    
    @IBAction func expandButtonTapped(sender: AnyObject) {
       
        if (didItShrink == false) {
            UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                    print("In the call for 1st animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                    print("In the call for 2nd animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                    print("In the call for 3rd animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.0)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                }, completion: {_ in
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor)
                    self.bonJoviHeigtConstraint.active = true})
            
            didItShrink = true
        }
        
        else {
            UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                    print("In the call for 1st animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                    print("In the call for 2nd animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                    print("In the call for 3rd animation")
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    self.bonJoviHeigtConstraint.active = true
                    self.view.layoutIfNeeded()
                })
                }, completion: {_ in
                    self.bonJoviHeigtConstraint.active = false
                    self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                    self.bonJoviHeigtConstraint.active = true})
            
            didItShrink = false
        }
        
    }
    
}

