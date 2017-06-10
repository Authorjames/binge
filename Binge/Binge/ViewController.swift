//
//  ViewController.swift
//  Binge
//
//  Created by Marco Gravbrøt on 09/06/2017.
//  Copyright © 2017 Marco Gravbrøt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return UIInterfaceOrientationMask.portrait }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playButton.backgroundColor = UIColor.clear
        playButton.layer.borderWidth = 2
        playButton.layer.borderColor = UIColor.white.cgColor
        playButton.layer.cornerRadius = playButton.frame.height/2
        playButton.layer.masksToBounds = true
        playButton.clipsToBounds = true
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(red: 250/255, green: 112/255, blue: 154/255, alpha: 1).cgColor,
            UIColor(red: 254/255, green: 225/255, blue: 64/255, alpha: 1).cgColor
        ]
        
        /*gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)*/
        
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
