//
//  ViewController.swift
//  boomApp
//
//  Created by jorge on 9/23/16.
//  Copyright © 2016 jorge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var btnRed: UIButton!
    @IBOutlet weak var redView: UIView!
    
    var viewBlueShowed: Bool = false
    var viewRedShowed: Bool = false


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHideBlueTouched(sender: UIButton) {
        btnBlue.titleLabel?.text = "Show Blue"

//        viewBlueShowed = !viewBlueShowed
//        
//        if(viewBlueShowed){
//            viewBlueShowed = false
//            blueView.hidden = false
//            btnBlue.titleLabel?.text = "Show Blue"
//        }else{
//            viewBlueShowed = true
//            blueView.hidden = true
//            btnBlue.titleLabel?.text = "Hide Blue"
//        }
    }

    @IBAction func onHideRedTouched(sender: UIButton) {
        viewRedShowed = !viewRedShowed
        if(viewRedShowed){
            viewRedShowed = false

            redView.hidden = false
            btnRed.titleLabel?.text = "Show Red"
        }else{
            viewRedShowed = true
            redView.hidden = true
            btnRed.titleLabel?.text = "Hide Red"
        }
    }


}

