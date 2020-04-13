//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

/// Navegacao orientada ao Conteudo/Experiencia (Jogo)

class OnboardingViewController: UIViewController {
    
    //Buttons and Labels
    let buttonToNext = UIButton()
    
    override func loadView() { ///Carega/Cria a view
        //setting Buttons
        buttonToNext.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToNext.setImage(UIImage(named: "buttons/proximaFaseButtonVerde"), for: .normal)
        
        
        //Views, UIImage and ImagenViews
        let view = UIView()
        let background = UIImageView()
        
        
        background.image = UIImage(named: "diversos/onboarding")
        background.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        
        //Target Button
        buttonToNext.addTarget(self, action: #selector(touchedButton), for: .touchUpInside)
        
        
        //Subviews
        view.addSubview(background)
        view.addSubview(buttonToNext)
        
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
    let buttonToNext = UIButton()
    let buttonToReset = UIButton()
    let buttonToOnboarding = UIButton()
    
    override func loadView() { ///Carega/Cria a view
        
        //setting Buttons
        buttonToReset.frame = CGRect(x: 1200, y: 660, width: 250, height: 100)
        buttonToReset.setImage(UIImage(named: "buttons/resetButton"), for: .normal)
        
        buttonToOnboarding.frame = CGRect(x: 1200, y: 740, width: 250, height: 100)
        buttonToOnboarding.setImage(UIImage(named: "buttons/onboardingButton"), for: .normal)
        
        buttonToNext.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToNext.setImage(UIImage(named: "buttons/proximaFaseButton"), for: .normal)
        buttonToNext.isEnabled = true // comeca inativo
        
        
        //Views and ImagenViews
        let view = UIView()
        let background = UIImageView()
        let title = UIImageView()
        let woodPallet = UIImageView()
        let extraVase = UIImageView()
        let centerVase = UIImageView()
        let circleNotes = UIImageView()
        //SeedLevelOne
        let seedDo = UIImageView()
        let seedRe = UIImageView()
        let seedSol = UIImageView()
        //Boards
        let manBoard = UIImageView()
        let womanBoard = UIImageView()
        //PoupUps
        let poupUpMan = UIImageView()
        let poupUpOneWoman = UIImageView()
        let poupUpTwoWoman = UIImageView()
        let poupUpCongratsLevelOne = UIImageView()
        let poupUpTryAgain = UIImageView()
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
        
        
        //settings ImageViews
        background.image = UIImage(named: "diversos/background")
        background.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        extraVase.image = UIImage(named: "vasos/vasoExtra")
        extraVase.frame = CGRect(x: 736, y: 769, width: 370, height: 134)
        
        title.image = UIImage(named: "diversos/titulo")
        title.frame = CGRect(x: 612, y: 46, width: 571, height: 104)
        
        woodPallet.image = UIImage(named: "diversos/palete")
        woodPallet.frame = CGRect(x: 612, y: 242, width: 571, height: 418)
        
        womanBoard.image = UIImage(named: "quadros/quadroMulher")
        womanBoard.frame = CGRect(x: 2, y: 562, width: 508, height: 340)
        
        manBoard.image = UIImage(named: "quadros/quadroHomem")
        manBoard.frame = CGRect(x: 60, y: 20, width: 367, height: 537)
                      
        seedDo.image = UIImage(named: "sementes/sementeDoVerde")
        seedDo.frame = CGRect(x: 190, y: 364, width: 57, height: 77)
        //gesto da semente do dó
        seedDo.isUserInteractionEnabled = true
        let PanSeedDo = UIPanGestureRecognizer(target: self, action: #selector(handlePanSeedDo))
        seedDo.addGestureRecognizer(PanSeedDo)

        seedRe.image = UIImage(named: "sementes/sementeReCinza")
        seedRe.frame = CGRect(x: 136, y: 450, width: 57, height: 77)
        
        seedSol.image = UIImage(named: "sementes/sementeSolCinza")
        seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
        
        circleNotes.image = UIImage(named: "diversos/auraCircularDeNotas")
        circleNotes.frame = CGRect(x: 87, y: 620, width: 263, height: 263)
        
        doVitaminote.image = UIImage(named: "vitaminas/doVitaminota")
        doVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)

        reVitaminote.image = UIImage(named: "vitaminas/reVitaminota")
        reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)

        miVitaminote.image = UIImage(named: "vitaminas/miVitaminota")
        miVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)

        faVitaminote.image = UIImage(named: "vitaminas/faVitaminota")
        faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)

        solVitaminote.image = UIImage(named: "vitaminas/solVitaminota")
        solVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)

        laVitaminote.image = UIImage(named: "vitaminas/laVitaminota")
        laVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)

        siVitaminote.image = UIImage(named: "vitaminas/siVitaminota")
        siVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
        
        faSharpVitaminote.image = UIImage(named: "vitaminas/faSustenidoVitaminota")
        faSharpVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
        
        solSharpVitaminote.image = UIImage(named: "vitaminas/solSustenidoVitaminota")
        solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
        
        centerVase.image = UIImage(named: "vasos/vasoComTerra")
        centerVase.frame = CGRect(x: 861, y: 397, width: 96, height: 87)
        
        poupUpMan.image = UIImage(named: "poupUp/poupUpHomem")
        poupUpMan.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
        
        poupUpOneWoman.image = UIImage(named: "poupUp/poupUp1Mulher")
        poupUpOneWoman.frame = CGRect(x: 377, y: 599, width: 250, height: 208)
        poupUpOneWoman.isHidden = true //comeca inativo

        poupUpTwoWoman.image = UIImage(named: "poupUp/poupUp2Mulher")
        poupUpTwoWoman.frame = CGRect(x: 592, y: 547, width: 227, height: 200)
        poupUpTwoWoman.isHidden = true //comeca inativo

        poupUpCongratsLevelOne.image = UIImage(named: "poupUp/parabensFase1")
        poupUpCongratsLevelOne.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
        poupUpCongratsLevelOne.isHidden = true //comeca inativo
        
        poupUpTryAgain.image = UIImage(named: "poupUp/falaErroJogada")
        poupUpTryAgain.frame = CGRect(x: 235, y: 22, width: 191, height: 203) //ver aqui as dimensoes e posicao
        poupUpTryAgain.isHidden = true

     

        
        
        //Target Button
        buttonToReset.addTarget(self, action: #selector(touchedButtonReset), for: .touchUpInside)
        buttonToOnboarding.addTarget(self, action: #selector(touchedButtonToBackToOnboarding), for: .touchUpInside)
        buttonToNext.isEnabled = false   //butaoToNext nao funciona nessa parte ainda
        
        ///SUBVIEWS HIERARCHIC
        //Several
        view.addSubview(background)
        view.addSubview(title)
        view.addSubview(woodPallet)
        view.addSubview(extraVase)
        view.addSubview(centerVase)
        //Butons
        view.addSubview(buttonToReset)
        view.addSubview(buttonToNext)
        view.addSubview(buttonToOnboarding)
        //Boards
        view.addSubview(manBoard)
        view.addSubview(womanBoard)
        //Internal Man Board
        view.addSubview(seedDo)
        view.addSubview(seedRe)
        view.addSubview(seedSol)
        
        
        //PoupUps
        view.addSubview(poupUpMan)
        view.addSubview(poupUpOneWoman)
        view.addSubview(poupUpTwoWoman)
        view.addSubview(poupUpCongratsLevelOne)
        view.addSubview(poupUpTryAgain)

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
        
        
        self.view = view
        
    }
    
    //IBActions
    
  /*   @IBAction func showOrDismissDoupUp(_ String: poupUp, _ string: estadoDaPlanta) {
        switch (poupUp) {
        case "plantaSementEscala":

        case "addVitaminotasEvolucaoInicial":
            <#code#>
        case "addVitaminotasEvolucaoFinal":
            <#code#>
        case "parabensConclusaoEscala":
            <#code#>
        default:
            <#code#>
        }
        print("Apertou botão reset")
    }
 */
 
    
    @IBAction func touchedButtonReset() {
        print("Apertou botão reset")
    }
    
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
    
    //objc functions
    @objc func handlePanSeedDo(_ gesture: UIPanGestureRecognizer) {
        // explicacao sobre 1,2 no GesturePlayground de Ale
        // 1
        let translation = gesture.translation(in: view)
        
        // 2
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + translation.x,
            y: gestureView.center.y + translation.y
        )
        
        // 3
        gesture.setTranslation(.zero, in: view)
        
       // if(isSeedOntheVase(gestureView)){
            
        }

      print("Semente do Dó foi tocada!")
  }
    
    //other functions
    
//    isSeedOntheVase(view: UIImageView) -> Bool {
//        if view(esta la) {
//            return true
//        }
//        return false
//    }
      
    
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
//navigation.pushViewController(levelOneViewController, animated: true)

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
