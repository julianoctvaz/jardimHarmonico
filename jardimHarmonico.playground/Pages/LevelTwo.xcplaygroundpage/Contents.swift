//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class LevelTwoViewController: UIViewController {
    
    //-----------------------buttons-----------------------------
    let refreshButton = UIButton()
    let proximaFaseButton = UIButton()
    
    override func loadView() {///Carega/Cria a view
        //-----------------------views---------------------------
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        //-----------------------labels--------------------------
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World! level two"
        label.textColor = .black
        
        //------------------------subViews------------------------
        view.addSubview(label)
        view.addSubview(refreshButton)
        view.addSubview(proximaFaseButton)//nao tem action ainda
        self.view = view
    }
    
    //-----------------------IBActions-functions--------------------
    @IBAction func touchedRefreshButton() {
        print("oi")
    }
    
    @IBAction func touchedProximaFaseButton() {
        //navigationController?.pushViewController(FaseDoisViewController, animated: true)
    }
    
    //-----------------------functions----------------------------
    override func viewDidLoad() {///chamada quando a view, criada via storyboard, termina de ser carregada
        refreshButton.addTarget(self, action: #selector(LevelTwoViewController.touchedRefreshButton), for: .touchUpInside)
        proximaFaseButton.addTarget(self, action: #selector(LevelTwoViewController.touchedProximaFaseButton), for: .touchUpInside)
    }
}


// Present the view controller (vc) in the Live View window
PlaygroundPage.current.liveView = LevelTwoViewController()
let vc = LevelTwoViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.5)

