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
    @IBOutlet weak var shrinkButton: UIButton!
    
    var bonJoviHeigtConstraint = NSLayoutConstraint()
    var bonJoviCenterYConstraint = NSLayoutConstraint()
    var bonJoviWidthConstraint = NSLayoutConstraint()
    var bonJoviCenterXConstraint = NSLayoutConstraint()
    
    var shrinkButtonHeightConstraint = NSLayoutConstraint()
    var shrinkButtonCenterXConstraint = NSLayoutConstraint()
    var shrinkButtonWidthConstraint = NSLayoutConstraint()
    var shrinkButtonCenterYConstraint = NSLayoutConstraint()
    
    var didItShrink: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // call the function that initialize constraints
        self.initializeConstraints()
        
    }
    
    // initialize constraints
    func initializeConstraints() {
        //view constraints
        self.view.removeConstraints(self.view.constraints)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        
        //button constraints
        self.shrinkButton.removeConstraints(self.shrinkButton.constraints)
        self.shrinkButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.shrinkButtonHeightConstraint = self.shrinkButton.heightAnchor.constraintEqualToAnchor(self.shrinkButton.heightAnchor, multiplier: 1)
        self.shrinkButtonWidthConstraint = self.shrinkButton.widthAnchor.constraintEqualToAnchor(self.shrinkButton.widthAnchor, multiplier: 1)
        self.shrinkButtonCenterXConstraint = self.shrinkButton.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor)
        self.shrinkButtonCenterYConstraint = self.shrinkButton.centerYAnchor.constraintEqualToAnchor(self.view.bottomAnchor, constant: -40)
        
        self.shrinkButtonHeightConstraint.active = true
        self.shrinkButtonWidthConstraint.active = true
        self.shrinkButtonCenterXConstraint.active = true
        self.shrinkButtonCenterYConstraint.active = true
        
        //image constraints
        self.bonJoviImage.removeConstraints(self.bonJoviImage.constraints)
        self.bonJoviImage.translatesAutoresizingMaskIntoConstraints = false
        
        self.bonJoviWidthConstraint = self.bonJoviImage.widthAnchor.constraintEqualToAnchor(self.view.widthAnchor, multiplier: 1.0)
        self.bonJoviCenterXConstraint = self.bonJoviImage.centerXAnchor.constraintEqualToAnchor(self.view.centerXAnchor)
        
        self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
        self.bonJoviCenterYConstraint = self.bonJoviImage.centerYAnchor.constraintEqualToAnchor(self.view.centerYAnchor)
        
        self.bonJoviHeigtConstraint.active = true
        self.bonJoviCenterYConstraint.active = true
        self.bonJoviCenterXConstraint.active = true
        self.bonJoviWidthConstraint.active = true
    }
    
    // button to shrink and expand the picture has been tapped
    @IBAction func expandButtonTapped(sender: AnyObject) {
        if (didItShrink == false) {
            self.animationsToShrinkImage()
            didItShrink = true
        } else {
            self.animationsToExpandImage()
            didItShrink = false
        }
    }
    
    // shrink the image
    func animationsToShrinkImage() {
        UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 1.0)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            }, completion: {_ in
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor)
                self.bonJoviHeigtConstraint.active = true
        })
    }
    
    // expamd the image
    func animationsToExpandImage() {
        UIView.animateKeyframesWithDuration(1.2, delay: 0.0, options: [], animations: {
            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 0.4, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 3)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframeWithRelativeStartTime(0.4, relativeDuration: 0.5, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.3)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframeWithRelativeStartTime(0.9, relativeDuration: 0.3, animations: {
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                self.bonJoviHeigtConstraint.active = true
                self.view.layoutIfNeeded()
            })
            }, completion: {_ in
                self.bonJoviHeigtConstraint.active = false
                self.bonJoviHeigtConstraint = self.bonJoviImage.heightAnchor.constraintEqualToAnchor(self.view.heightAnchor, multiplier: 0.5)
                self.bonJoviHeigtConstraint.active = true
        })
    }
    
}

