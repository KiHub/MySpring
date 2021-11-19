//
//  ViewController.swift
//  MySpring
//
//  Created by  Mr.Ki on 18.11.2021.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button: SpringButton!
    
    
    @IBOutlet weak var viewOutlet: SpringView!
    @IBOutlet weak var textViewOutlet: SpringLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemTeal.cgColor,
            UIColor.systemGray
                .cgColor
        ]
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    @IBAction func buttonTapped(_ sender: SpringButton) {

        
        if animationTypes[animationCont] != animationTypes.last {
            currentAnimation = animationTypes[animationCont]
            viewOutlet.animation = currentAnimation
            viewOutlet.curve = "easeIn"
            viewOutlet.force = 2
            viewOutlet.duration = 1
            viewOutlet.delay = 0.3
            viewOutlet.animate()
            
            animationCont += 1
            

        } else {
            
            viewOutlet.animation = "flash"
            viewOutlet.curve = "easeIn"
            viewOutlet.force = 2
            viewOutlet.duration = 1
            viewOutlet.delay = 0.3
            viewOutlet.animate()
            
            animationCont = 0
        }
        
        
        button.setTitle("Next \(animationTypes[animationCont])", for: .normal)
        textViewOutlet.text = currentAnimation
        
        print(animationTypes[animationCont])
        
        
        
    }
    
    
    
}



