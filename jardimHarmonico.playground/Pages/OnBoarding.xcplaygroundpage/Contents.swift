//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class onboardingViewController : UIViewController {
    
    //-----------------------buttons-----------------------------
    let button = UIButton()
    
    
    override func loadView() {///Carega/Cria a view
        //-----------------------views---------------------------
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        //-----------------------labels--------------------------
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World! Onboarding"
        label.textColor = .black
        
        //------------------------subViews------------------------
        view.addSubview(label)
        view.addSubview(button)
        
        self.view = view
    }
    
    //-----------------------IBAction-functions--------------------
    @IBAction func touchedButton() {
        print("tocou no botao da onboarding")
        //navigationController?.pushViewController(FaseUmViewController, animated: true)
        
    }
    
    //-----------------------functions----------------------------
    override func viewDidLoad() {///chamada quando a view, criada via storyboard, termina de ser carregada
        button.addTarget(self, action: #selector(onboardingViewController.touchedButton), for: .touchUpInside)
        
    }
}

// Present the view controller (vc) in the Live View window
PlaygroundPage.current.liveView = onboardingViewController()
let vc = onboardingViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)

