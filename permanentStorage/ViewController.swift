//
//  ViewController.swift
//  permanentStorage
//
//  Created by Kaylan Smith on 6/2/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set data in key value pairs
        NSUserDefaults.standardUserDefaults().setObject("Gretta", forKey: "name")
        
        // retrieve variable
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let arr = [1,2,3,4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        // When we save something as NSUserDefaults, it doesn't save the type, hence "as! NSArray"
        // Which is like saying, "I'm SURE this is an array"
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in returnedArray {
            
            print(x)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

