//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

/// Navegacao orientada ao Conteudo/Experiencia (Jogo)

class OnboardingViewController: UIViewController {
    
    //Buttons and Labels
    let buttonToPlay = UIButton()
     
    override func loadView() { ///Carega/Cria a view
        //setting Buttons
        buttonToPlay.frame = CGRect(x: 1120, y: 820, width: 250, height: 100)
        buttonToPlay.setImage(UIImage(named: "buttons/proximaFaseButtonVerde"), for: .normal)
        
                       
        //Views, UIImage and ImagenViews
        let view = UIView()
        let background = UIImageView()
                              
        
        background.image = UIImage(named: "onboarding")
        background.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
                     
        
        //Target Button
         buttonToPlay.addTarget(self, action: #selector(touchedButton), for: .touchUpInside)
    
                
        //Subviews
        view.addSubview(background)
        view.addSubview(buttonToPlay)
        
        self.view = view
        
    }
    
    //IBActions
    @IBAction func touchedButton() {
        print("Apertou botão da OnboardingViewController para ir para a LeveOne")
        let novaViewController = LevelOneViewController(screenType: .mac , isPortrait: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        navigationController?.navigationBar.isHidden = true
         
    }
          
}




class LevelOneViewController: UIViewController {
    
    override func loadView() {  ///Carega/Cria a view
        //Views and ImageViews
        let view = UIView()
        view.backgroundColor = .purple//colocar imagem
        
        self.view = view
    }
}
/*

class LevelTwoViewController: UIViewController {
    
    override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World to Level one!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {}///chamada quando a view, criada via storyboard, termina de ser carregada
}


class LevelThreeViewController: UIViewController {
    
    override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World to Level one!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {}///chamada quando a view, criada via storyboard, termina de ser carregada
}


class FinalChallengeViewController: UIViewController {
    
    override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World to FinalChalenge!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
    
    override func viewDidLoad() {}///chamada quando a view, criada via storyboard, termina de ser carregada
}


*/

// Present the view controller (vc) in the Live View window
let onboardingViewController = OnboardingViewController()
let levelOneViewController = LevelOneViewController()

let navigation = UINavigationController(screenType: .mac, isPortrait: true)
    
navigation.pushViewController(onboardingViewController, animated: true)
    
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)


//PlaygroundPage.current.liveView = onboardingViewController()
//let vc = onboardingViewController(screenType: .mac, isPortrait: true)
////let navigation = UINavigationController(rootViewController: onboardingViewController(screenType: .mac , isPortrait: true))
//PlaygroundPage.current.liveView = vc.scale(to: 0.5)




//: 1. [Rosas](google.com/rosas) sao *vermelhas*
//:
//: 2. Violetas sao **azuis**
//:
//: * escrevendo seu `rascunho ou marcacao`
//:
//: * isto é tao [fun][1]!
//: [1]:  https://en.wikipedia.org/wiki/fun
//nao rolou essa ultima     do [1]
