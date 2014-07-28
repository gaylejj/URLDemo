//
//  ViewController.swift
//  URLDemo
//
//  Created by Jeff Gayle on 7/28/14.
//  Copyright (c) 2014 Jeff Gayle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var downloadImage: UIImageView!
    
    @IBAction func initiateDownload(sender: UIButton) {
        // setup url
        var url = NSURL(string: "http://graphics8.nytimes.com/images/2012/10/16/sports/soccer/sounders2222/sounders2222-blog480.jpg")
        
        var myQueue = NSOperationQueue()
        
        myQueue.addOperationWithBlock({() -> Void in
            
            //setup data object from url path
            var data = NSData(contentsOfURL: url)
            
            NSOperationQueue.mainQueue().addOperationWithBlock({() -> Void in
                //setup image to data retrieved
                var myImage = UIImage(data: data)
                
                //assign image to imageview
                self.downloadImage.image = myImage
                
                })
            })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

