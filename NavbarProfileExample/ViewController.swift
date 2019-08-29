//
//  ViewController.swift
//  NavbarProfileExample
//
//  Created by Soemsak on 23/8/2562 BE.
//  Copyright © 2562 GEIVIINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("xxaaaa")
        
        if self.navigationController == nil {
            return
        }
        let navView = UIView()
        let label = UILabel()
        label.text = "Text"
        label.sizeToFit()
        label.center = navView.center
        label.textAlignment = NSTextAlignment.center
        let image = UIImageView()
        image.image = UIImage(named: "chocolate")
        let imageAspect = image.image!.size.width/image.image!.size.height
        image.frame = CGRect(x: label.frame.origin.x-label.frame.size.height*imageAspect, y: label.frame.origin.y, width: label.frame.size.height*imageAspect, height: label.frame.size.height)
        image.contentMode = UIView.ContentMode.scaleAspectFit
        navView.addSubview(label)
        navView.addSubview(image)
        self.navigationItem.titleView = navView
        navView.sizeToFit()
        
        
        self.navigationItem.titleView?.backgroundColor = .red
        navView.backgroundColor = .green
        
        self.navigationItem.titleView?.widthAnchor.constraint(equalToConstant: 100).isActive = true
        self.navigationItem.titleView?.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
    }


}

