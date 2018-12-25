//
//  ViewController.swift
//  Swift5Introduction1
//
//  Created by 奥川幹也 on 2018/12/07.
//  Copyright © 2018 奥川幹也. All rights reserved.
//

import UIKit
import PGEZTransition


class IntroThirdController: UIViewController {
    
    
    @IBOutlet weak var title1: PGTransformLabel!
    @IBOutlet weak var title2: PGTransformLabel!
    
    @IBOutlet weak var image1: PGTransformImageView!
    
    @IBOutlet weak var transformView: PGTransformView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    private var transition:PGTransformTransition!
    
    
    @IBOutlet weak var jampButtom: UIButton!
    
    
    
    
    lazy var alert:UIViewController = {
      
        let alert = UIAlertController.init(title: nil, message: "始めよう", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        
        return alert
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitionSetUp()
    }
    
    
    
    
    
    
    @IBAction func onNext(_ sender: Any) {
        
        self.present(self.alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func onBuck(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
}


// デリゲートのようなもの
extension IntroThirdController {
    func transitionSetUp() {
        
        
        
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
