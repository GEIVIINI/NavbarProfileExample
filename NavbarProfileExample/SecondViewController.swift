//
//  SecondViewController.swift
//  NavbarProfileExample
//
//  Created by Soemsak on 23/8/2562 BE.
//  Copyright © 2562 GEIVIINI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavBarProfile(name: "Methawin", location: "Chiangmai", profileImage: UIImage(named: "girl2")!)
        
    }

    func setNavBarProfile(name: String, location: String, profileImage: UIImage) {
        
        if self.navigationController == nil {
            return
        }
        
        let navView = UIView()
        let displayNameLabel = UILabel()
        let locationCheckInLabel = UILabel()
        let imageSize : CGFloat = 33
        
        displayNameLabel.textColor = .black
        displayNameLabel.font = UIFont(name: displayNameLabel.font.fontName, size: 14)
        displayNameLabel.text =  name
        displayNameLabel.sizeToFit()
        let textSize = displayNameLabel.text!.size(withAttributes:[.font: UIFont.systemFont(ofSize:14)]).width + imageSize
        displayNameLabel.center = CGPoint(x: textSize / 2 + imageSize / 2, y: 12)
        displayNameLabel.textAlignment = NSTextAlignment.center
        
        locationCheckInLabel.textColor = .lightGray
        locationCheckInLabel.font = UIFont(name: locationCheckInLabel.font.fontName, size: 12)
        locationCheckInLabel.text = location
        locationCheckInLabel.sizeToFit()
        locationCheckInLabel.center = CGPoint(x: imageSize + imageSize/2 + 12 , y: 28)
        locationCheckInLabel.textAlignment = NSTextAlignment.left
        
        let image = UIImageView()
        image.image = profileImage//UIImage(named: "girl2")
        let imageAspect = image.image!.size.width/image.image!.size.height
        image.frame = CGRect(
            x: displayNameLabel.frame.origin.x - displayNameLabel.frame.size.height * imageAspect - imageSize / 2,
            y: displayNameLabel.frame.origin.y,
            width: imageSize,
            height: imageSize
        )
        image.layer.masksToBounds = false
        image.layer.cornerRadius = image.frame.height / 2
        image.clipsToBounds = true
        image.contentMode = UIView.ContentMode.scaleAspectFit
        
        self.view.addSubview(navView)
        navView.addSubview(displayNameLabel)
        navView.addSubview(locationCheckInLabel)
        navView.addSubview(image)
        navView.sizeToFit()
        self.navigationItem.titleView = navView
        
        self.navigationItem.titleView?.backgroundColor = .red
        
        let displayNameSize = displayNameLabel.text!.size(withAttributes:[.font: UIFont.systemFont(ofSize:14)]).width + imageSize
        let locationSize = locationCheckInLabel.text!.size(withAttributes:[.font: UIFont.systemFont(ofSize:12)]).width + imageSize
        if displayNameSize > locationSize {
            self.navigationItem.titleView?.widthAnchor.constraint(equalToConstant: displayNameSize).isActive = true
        } else {
            self.navigationItem.titleView?.widthAnchor.constraint(equalToConstant: locationSize).isActive = true
        }
        self.navigationItem.titleView?.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        
        
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(singleTapAction))
        self.navigationItem.titleView!.addGestureRecognizer(singleTap)
        
    }
    
    @objc func singleTapAction() {
        print("Single")
        // Write your code here ...
        
    }
    
}
