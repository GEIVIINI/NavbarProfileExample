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

        if self.navigationController == nil {
            return
        }
        
        // Create a navView to add to the navigation bar
        let navView = UIView()
        navView.backgroundColor = .red
        // Create the label
        let label = UILabel()
        //label.backgroundColor = .green
        label.text = "Second View"
        label.sizeToFit()
        label.center = CGPoint(x: 0, y: -8)
        label.textAlignment = NSTextAlignment.center
        
        let label2 = UILabel()
        //label2.backgroundColor = .blue
        label2.text = "Small"
        label2.sizeToFit()
        label2.center = CGPoint(x: 0, y: 8)
        label2.textAlignment = NSTextAlignment.center
        
        // Create the image view
        let image = UIImageView()
        image.image = UIImage(named: "girl2")
        // To maintain the image's aspect ratio:
        let imageAspect = image.image!.size.width/image.image!.size.height
        // Setting the image frame so that it's immediately before the text:
        image.frame = CGRect(
            x: label.frame.origin.x-label.frame.size.height*imageAspect * 1.5 - 8,
            y: label.frame.origin.y * 1.5 + 8,
            width: label.frame.size.height*imageAspect * 1.5,
            height: label.frame.size.height * 1.5
        )
        
        image.layer.masksToBounds = false
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        
        image.contentMode = UIView.ContentMode.scaleAspectFit
        
        // Add both the label and image view to the navView
        navView.addSubview(label)
        navView.addSubview(label2)
        navView.addSubview(image)
        
        // Set the navigation bar's navigation item's titleView to the navView
        self.navigationItem.titleView = navView
        
        // Set the navView's frame to fit within the titleView
        navView.sizeToFit()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
