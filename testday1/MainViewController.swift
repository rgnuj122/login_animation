//
//  MainViewController.swift
//  testday1
//
//  Created by 許廷綺 on 2018/6/9.
//  Copyright © 2018 許廷綺. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var logoShow: UIImageView!
    
//    var imgArray:[UIImage] = []
    var imgArray :NSMutableArray = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for x in 1...3{
//            imgArray.append(UIImage(named:"\(x)")!)
            imgArray.add(UIImage(named:"\(x)")!)
        }
        logoShow.animationImages = imgArray as! [UIImage]
        logoShow.animationDuration = 4
        logoShow.startAnimating()
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
