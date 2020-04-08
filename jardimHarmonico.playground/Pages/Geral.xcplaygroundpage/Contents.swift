//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

/// Navegacao orientada ao Conteudo/Experiencia (Jogo)

class OnboardingViewController: UIViewController {
    
    //Buttons and Labels
    let buttonToPlay = UIButton()
    
    override func loadView() { ///Carega/Cria a view
        //setting Buttons
        buttonToPlay.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToPlay.setImage(UIImage(named: "buttons/proximaFaseButtonVerde"), for: .normal)
        
        
        //Views, UIImage and ImagenViews
        let view = UIView()
        let background = UIImageView()
        
        
        background.image = UIImage(named: "diversos/onboarding")
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
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        
    }
    
}

class LevelOneViewController: UIViewController {
    
    //Buttons and Labels
    let buttonToPlay = UIButton()
    let buttonToReset = UIButton()
    let buttonToOnboarding = UIButton()
    
    override func loadView() { ///Carega/Cria a view
        
        //setting Buttons
        buttonToReset.frame = CGRect(x: 1265, y: 620, width: 121, height: 121)
        buttonToReset.setImage(UIImage(named: "buttons/resetButton"), for: .normal)
        
        buttonToOnboarding.frame = CGRect(x: 1200, y: 730, width: 250, height: 100)
        buttonToOnboarding.setImage(UIImage(named: "buttons/onboardingButton"), for: .normal)
        
        buttonToPlay.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToPlay.setImage(UIImage(named: "buttons/proximaFaseButton"), for: .normal)
             
        
        //Views, UIImage and ImagenViews
        let view = UIView()
        let background = UIImageView()
        let title = UIImageView()
        let woodPallet = UIImageView()
        let extraVase = UIImageView()
        let seedLevelOne = UIImageView()
        let circleNotes = UIImageView()
        //Boards
        let manBoard = UIImageView()
        let womanBoard = UIImageView()
        //PoupUps
        let poupUpMan = UIImageView()
        let poupUpOneWoman = UIImageView()
        let poupUpTwoWoman = UIImageView()
        let poupUpThreeWoman = UIImageView()
        //Vitaminotes
        let doVitaminote = UIImageView() //1
        let reVitaminote = UIImageView() //2
        let miVitaminote = UIImageView() //3
        let faVitaminote = UIImageView() //4
        let solVitaminote = UIImageView() //5
        let laVitaminote = UIImageView() //6
        let siVitaminote = UIImageView() //7
        let faSharpVitaminote = UIImageView() //8
        let solSharpVitaminote = UIImageView()//9
        
        background.image = UIImage(named: "diversos/background")
        background.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        
        
        //Target Button
        buttonToReset.addTarget(self, action: #selector(touchedButtonReset), for: .touchUpInside)
        buttonToOnboarding.addTarget(self, action: #selector(touchedButtonToBackToOnboarding), for: .touchUpInside)
        //butaoToPlay nao funciona nessa parte ainda
        
        
        //Subviews
        view.addSubview(title)
        view.addSubview(woodPallet)
        //ballons
        view.addSubview(manBoard)
        view.addSubview(womanBoard)
        //Pou
        view.addSubview(poupUpMan)
        view.addSubview(poupUpOneWoman)
        view.addSubview(poupUpTwoWoman)
        view.addSubview(poupUpThreeWoman)
        //Other elements
        view.addSubview(extraVase)
        view.addSubview(seedLevelOne)
        view.addSubview(circleNotes)
        //VitamiNotes
        view.addSubview(doVitaminote)
        view.addSubview(reVitaminote)
        view.addSubview(miVitaminote)
        view.addSubview(faVitaminote)
        view.addSubview(solVitaminote)
        view.addSubview(laVitaminote)
        view.addSubview(siVitaminote)
        view.addSubview(faSharpVitaminote)
        view.addSubview(solSharpVitaminote)
    
        view.addSubview(background)
        view.addSubview(buttonToReset)
        view.addSubview(buttonToPlay)
        view.addSubview(buttonToOnboarding)
    
        
        
        
        self.view = view
        
    }
    
    //IBActions
    @IBAction func touchedButtonReset() {
        print("Apertou botão reset")
    }
    
    //IBActions
    @IBAction func touchedButtonNextLevel() {
        //guard if escala do Do nao esta completa nao fica verde
        //else deixa botao proximaFase verde
        print("Apertou botão proxima Fase")
    }
    
    @IBAction func touchedButtonToBackToOnboarding() {
        print("Apertou botão para voltar a OnboardingViewController ")
        navigationController?.navigationBar.isHidden = true
        navigationController?.popViewController(animated: true)

        
        
    }
    
}

class LevelTwoViewController: UIViewController {
    
    override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .green//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World to Level 2!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
    
}
/*
 
 
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
let levelTwoViewController = LevelTwoViewController()

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