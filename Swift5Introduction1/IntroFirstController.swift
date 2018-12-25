//
//  ViewController.swift
//  Swift5Introduction1
//
//  Created by 奥川幹也 on 2018/12/07.
//  Copyright © 2018 奥川幹也. All rights reserved.
//

import UIKit
import PGEZTransition


class IntroFirstController: UIViewController {
    
    
    @IBOutlet weak var title1: PGTransformLabel!
    @IBOutlet weak var title2: PGTransformLabel!
    
    @IBOutlet weak var image1: PGTransformImageView!
    
    @IBOutlet weak var transformView: PGTransformView!
    
    private var transition:PGTransformTransition!
    
    
    @IBOutlet weak var nextbutton: UIButton!
    
    private lazy var nextVc : IntroSecondController = {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "IntroSecondController") as! IntroSecondController
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitionSetUp()
    }


    
    
    
    
    @IBAction func onNext(_ sender: Any) {
        
        
        self.transition.presentTransformViewController()
    }
    
    
    
    
    
    
}


// デリゲートのようなもの
extension IntroFirstController {
    func transitionSetUp() {
        self.transition = PGTransformTransition.init(target: self, presenting: self.nextVc)
        
        
        transformView.setStartAlpha(0.0, start: 0.0, duration: 1.0).setEndAlpha(0.0, start: 0.0, duration: 1.0)
        
        image1
            .setStartTransform(.rateX(1.0), start: 0.0, duration: 1.0)
            .setStartAlpha(1.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(-1.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 1.0)
        
        
        title1
            .setStartTransform(.rateX(0.3), start: 0.0, duration: 1.0)
            .setStartAlpha(0.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(0.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
        
        title2
            .setStartTransform(.rateX(0.3), start: 0.0, duration: 1.0)
            .setStartAlpha(0.0, start: 0.0, duration: 1.0)
            .setEndTransform(.rateX(0.0), start: 0.0, duration: 1.0)
            .setEndAlpha(1.0, start: 0.0, duration: 0.3)
        
    }
}
