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
    
        button.layer.shadowColor = UIColor.systemTeal.cgColor
        button.layer.shadowOffset = CGSize(width:1,height: 2.0)
        button.layer.shadowRadius = 5.5
        button.layer.shadowOpacity = 20.0
        button.layer.shadowOffset = CGSize(width: 3, height: 4)
        button.layer.masksToBounds = false;
        button.layer.shadowPath = UIBezierPath(roundedRect:button.bounds, cornerRadius:button.layer.cornerRadius).cgPath
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    @IBAction func buttonTapped(_ sender: SpringButton) {

        button.animation = "squeeze"
        button.curve = "spring"
        button.force = 1
        button.duration = 1
        button.delay = 0.1
        button.animate()
        
        
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



