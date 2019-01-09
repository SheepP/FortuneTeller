//
//  ViewController.swift
//  FortuneTeller
//
//  Created by 鄭羽辰 on 2018/8/28.
//  Copyright © 2018 鄭羽辰. All rights reserved.
//

import UIKit
import GameKit
import GameplayKit

class ViewController: UIViewController {
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBOutlet weak var yourfortune: UIImageView!
    @IBAction func answerButton(_ sender: UIButton) {
        tellMeFortune()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake{
            tellMeFortune()
        }
    }
    func tellMeFortune(){
        if yourfortune.isHidden == true
        {
        //Make a random number
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: 6)+1
        //SWIFT4.2 : var randomNumber = Int.random(in: 0...5)
        //Change image
        yourfortune.image = UIImage(named: "\(randomNumber)")
        //Image Hidden
        yourfortune.isHidden = false
        //Make a sound
            AudioServicesPlaySystemSound(1001)
        }else{
            yourfortune.isHidden = true
        }
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

