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
        navigationController?.popViewController(animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        
    }
    //aqui pode ter outros buttons(IBActions) para validar se passou do lvl1 e quiser voltar ja ir para o lvl 2 ao inves de ter de voltar pro comeco
    
}

class LevelOneViewController: UIViewController {
        //Buttons and Labels
    let buttonToNext = UIButton()
    let buttonToReset = UIButton()
    let buttonToOnboarding = UIButton()
    
    ///UIIMageViews
    //several
    let background = UIImageView()
    let woodPallet = UIImageView()
    let extraVase = UIImageView()
    let centerVase = UIImageView()
    let vaseWithRound1Vitaminote = UIImageView()
    let vaseCompletedRounds = UIImageView()
    let circleNotes = UIImageView()
    let newCenterVase = UIImageView()
    
    let titleGarden = UIImageView()
    //PoupUps
    let poupUpMan = UIImageView()
    let poupUpOneWoman = UIImageView()
    let poupUpTwoWoman = UIImageView()
    let poupUpCongratsLevelOne = UIImageView()
    let poupUpTryAgain = UIImageView()
    //SeedLevelOne
    let seedDo = UIImageView()
    let seedRe = UIImageView()
    let seedSol = UIImageView()
    //Boards
    let manBoard = UIImageView()
    let womanBoard = UIImageView()
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
    
    var vitaminoteSequence = Array(repeating: false, count:7)//array bool de validacao
    var round1VitamineSequence = true
    var round2VitamineSequence = true
    
    
    override func loadView() { ///Carega/Cria a view
        
        //Main View
        let view = UIView()
        
        if(true){
        //setting Buttons
        buttonToReset.frame = CGRect(x: 1200, y: 660, width: 250, height: 100)
        buttonToReset.setImage(UIImage(named: "buttons/resetButton"), for: .normal)
        
        buttonToOnboarding.frame = CGRect(x: 1200, y: 740, width: 250, height: 100)
        buttonToOnboarding.setImage(UIImage(named: "buttons/onboardingButton"), for: .normal)
        
        buttonToNext.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToNext.setImage(UIImage(named: "buttons/proximaFaseButton"), for: .normal)
            buttonToNext.isEnabled = true }// buttons
        
        
        if(true){
        //settings ImageViews
        background.image = UIImage(named: "diversos/background")
        background.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        extraVase.image = UIImage(named: "vasos/vasoExtra")
        extraVase.frame = CGRect(x: 736, y: 769, width: 370, height: 134)
        
        titleGarden.image = UIImage(named: "diversos/titulo")
        titleGarden.frame = CGRect(x: 612, y: 46, width: 571, height: 104)
        
        woodPallet.image = UIImage(named: "diversos/palete")
        woodPallet.frame = CGRect(x: 612, y: 242, width: 571, height: 418)
        
        womanBoard.image = UIImage(named: "quadros/quadroMulher")
        womanBoard.frame = CGRect(x: 2, y: 562, width: 508, height: 340)
        
        manBoard.image = UIImage(named: "quadros/quadroHomem")
        manBoard.frame = CGRect(x: 60, y: 20, width: 367, height: 537)
        
        seedDo.image = UIImage(named: "sementes/sementeDoVerde")
        seedDo.frame = CGRect(x: 190, y: 364, width: 57, height: 77)
            
        
        centerVase.image = UIImage(named: "vasos/vasoComTerra")
        centerVase.frame = CGRect(x: 861, y: 397, width: 96, height: 87)
        
        newCenterVase.image = UIImage(named: "crescimentoPlanta/raizAposSemente")
        newCenterVase.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
        newCenterVase.isHidden = true
        
        vaseWithRound1Vitaminote.image = UIImage(named: "crescimentoPlanta/raizAposSementeEVitaminasPrimeiraParte")
        vaseWithRound1Vitaminote.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
        vaseWithRound1Vitaminote.isHidden = true
        
        vaseCompletedRounds.image = UIImage(named: "crescimentoPlanta/raizAposSementeEVitaminasDO")
        vaseCompletedRounds.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
        vaseCompletedRounds.isHidden = true
        
        
        poupUpMan.image = UIImage(named: "poupUp/poupUpHomem")
        poupUpMan.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
        
        poupUpOneWoman.image = UIImage(named: "poupUp/poupUp1Mulher")
        poupUpOneWoman.frame = CGRect(x: 377, y: 599, width: 250, height: 208)
        poupUpOneWoman.isHidden = true //comeca inativo
        
        poupUpTwoWoman.image = UIImage(named: "poupUp/poupUp2Mulher")
        poupUpTwoWoman.frame = CGRect(x: 377, y: 599, width: 227, height: 200)
        poupUpTwoWoman.isHidden = true //comeca inativo
        
        poupUpCongratsLevelOne.image = UIImage(named: "poupUp/parabensFase1")
        poupUpCongratsLevelOne.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
        poupUpCongratsLevelOne.isHidden = true //comeca inativo
        
        poupUpTryAgain.image = UIImage(named: "poupUp/falaErroJogada")
        poupUpTryAgain.frame = CGRect(x: 235, y: 22, width: 191, height: 203) //ver aqui as dimensoes e posicao
        poupUpTryAgain.isHidden = true
        }//several frames and UIImagensView
        
        
        if(true){
        seedDo.isUserInteractionEnabled = true
        let panSeedDo = UIPanGestureRecognizer(target: self, action: #selector(handlePanSeedDo))
        seedDo.addGestureRecognizer(panSeedDo)
        
        seedRe.image = UIImage(named: "sementes/sementeReCinza")
        seedRe.frame = CGRect(x: 136, y: 450, width: 57, height: 77)
        seedRe.isUserInteractionEnabled = false
        
        seedSol.image = UIImage(named: "sementes/sementeSolCinza")
        seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
        seedSol.isUserInteractionEnabled = false
        
        circleNotes.image = UIImage(named: "diversos/auraCircularDeNotas")
        circleNotes.frame = CGRect(x: 87, y: 620, width: 263, height: 263)
        
        doVitaminote.image = UIImage(named: "vitaminas/doVitaminota")
        doVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
        doVitaminote.isUserInteractionEnabled = true
        let panDoVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanDoVitaminote))
        doVitaminote.addGestureRecognizer(panDoVitaminote)
        
        reVitaminote.image = UIImage(named: "vitaminas/reVitaminota")
        reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
        reVitaminote.isUserInteractionEnabled = true
        let panReVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanReVitaminote))
        reVitaminote.addGestureRecognizer(panReVitaminote)
        
        
        miVitaminote.image = UIImage(named: "vitaminas/miVitaminota")
        miVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
        miVitaminote.isUserInteractionEnabled = true
        let panMiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanMiVitaminote))
        miVitaminote.addGestureRecognizer(panMiVitaminote)
        
        faVitaminote.image = UIImage(named: "vitaminas/faVitaminota")
        faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
        faVitaminote.isUserInteractionEnabled = true
        let panFaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanFaVitaminote))
        faVitaminote.addGestureRecognizer(panFaVitaminote)
        
        solVitaminote.image = UIImage(named: "vitaminas/solVitaminota")
        solVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
        solVitaminote.isUserInteractionEnabled = true
        let panSolVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSolVitaminote))
        solVitaminote.addGestureRecognizer(panSolVitaminote)
        
        laVitaminote.image = UIImage(named: "vitaminas/laVitaminota")
        laVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
        laVitaminote.isUserInteractionEnabled = true
        let panLaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanLaVitaminote))
        laVitaminote.addGestureRecognizer(panLaVitaminote)
        
        siVitaminote.image = UIImage(named: "vitaminas/siVitaminota")
        siVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
        siVitaminote.isUserInteractionEnabled = true
        let panSiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSiVitaminote))
        siVitaminote.addGestureRecognizer(panSiVitaminote)
        
        faSharpVitaminote.image = UIImage(named: "vitaminas/faSustenidoVitaminota")
        faSharpVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
        faSharpVitaminote.isUserInteractionEnabled = true
        let panFaSharpVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanFaSharpVitaminote))
        faSharpVitaminote.addGestureRecognizer(panFaSharpVitaminote)
        
        solSharpVitaminote.image = UIImage(named: "vitaminas/solSustenidoVitaminota")
        solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
        solSharpVitaminote.isUserInteractionEnabled = true
        let panSolSharpVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSolSharpVitaminote))
        solSharpVitaminote.addGestureRecognizer(panSolSharpVitaminote)
        } //gestures
        
        
        if(true){
            buttonToReset.addTarget(self, action: #selector(touchedButtonReset), for: .touchUpInside)
            
            buttonToOnboarding.addTarget(self, action: #selector(touchedButtonToBackToOnboarding), for: .touchUpInside)
           
            buttonToNext.addTarget(self, action: #selector(touchedButtonNextLevel), for: .touchUpInside)
            buttonToNext.isEnabled = false
           
        }//targets
        
        
        ///SUBVIEWS HIERARCHIC
        if(true){
        
        //Several
        view.addSubview(background)
        view.addSubview(titleGarden)
        view.addSubview(woodPallet)
        view.addSubview(extraVase)
        view.addSubview(centerVase)
        view.addSubview(newCenterVase)
        view.addSubview(vaseWithRound1Vitaminote)
        view.addSubview(vaseCompletedRounds)
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
        
        } //subviews
       
        self.view = view
        
    }
    
    ///IBActions fuctions
    @IBAction func touchedButtonReset() {
        //print(navigationController?.viewControllers)
        let novaViewController = LevelOneViewController(screenType: .mac , isPortrait: true)
          navigationController?.pushViewController(novaViewController, animated: false)
         // print(navigationController?.viewControllers)
          //coloca em cima da onboard a tela level 1
          navigationController?.navigationBar.isHidden = true
        print("Apertou botão reset")
        
    }
    
    @IBAction func touchedButtonNextLevel() {
        print("Apertou botão da LVL1 para ir para a lvl2")
        
        let novaViewController = LevelTwoViewController(screenType: .mac , isPortrait: true)
        //  navigationController?.popViewController( animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        
        print("Apertou botão proxima Fase")
    }
    
    @IBAction func touchedButtonToBackToOnboarding() {
        print("Apertou botão para voltar a OnboardingViewController ")
        navigationController?.navigationBar.isHidden = true
        navigationController?.popViewController(animated: true)
    }
    
    
    ///objc functions
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        if centerVaseRect.contains(gestureView.frame) {
            print("Semente foi colocada no vaso")
            seedDo.isHidden = true
            centerVase.isHidden = true
            newCenterVase.isHidden = false
            poupUpMan.isHidden = true
            poupUpOneWoman.isHidden = false
            //faça x coisa se estiver dentro do vaso
            
            print(newCenterVase.isHidden)
            print(vaseCompletedRounds.isHidden)
            print(vaseWithRound1Vitaminote.isHidden)
            
        }
        
        //print("Semente do Dó foi tocada!")
    }
    
    @objc func handlePanDoVitaminote(_ gesture: UIPanGestureRecognizer) {
        
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[0] == false){//valida a sequencia
                //  if(vitaminoteSequence[0] == true){//valida a sequencia
                vitaminoteSequence[0] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                doVitaminote.isHidden = true
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                doVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanReVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[0] == true && vitaminoteSequence[1] == false){//valida a sequencia
                vitaminoteSequence[1] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                reVitaminote.isHidden = true
                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanMiVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[1] == true && vitaminoteSequence[2] == false){//valida a sequencia
                vitaminoteSequence[2] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                miVitaminote.isHidden = true
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                miVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanFaVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[2] == true && vitaminoteSequence[3] == false){//valida a sequencia
                vitaminoteSequence[3] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                faVitaminote.isHidden = true
                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                faVitaminote.frame =  CGRect(x: 124, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanSolVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[3] == true && vitaminoteSequence[4] == false){//valida a sequencia
                vitaminoteSequence[4] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                solVitaminote.isHidden = true
                
            } else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                solVitaminote.frame =  CGRect(x: 186, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanLaVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[4] == true && vitaminoteSequence[5] == false){//valida a sequencia
                vitaminoteSequence[5] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                laVitaminote.isHidden = true
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                laVitaminote.frame =  CGRect(x: 250, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                // gestureView.isUserInteractionEnabled = true
            }
        }
    }
    
    @objc func handlePanSiVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[5] == true && vitaminoteSequence[6] == false){//valida a sequencia
                vitaminoteSequence[6] = true
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                
                
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = false
                newCenterVase.isHidden = true
                
                vaseWithRound1Vitaminote.isHidden = false
                
                doVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
                doVitaminote.isHidden = false
                reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
                reVitaminote.isHidden = false
                miVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
                miVitaminote.isHidden = false
                faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
                faVitaminote.isHidden = false
                solVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
                solVitaminote.isHidden = false
                laVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
                laVitaminote.isHidden = false
                gesture.isEnabled = false
                siVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
                gesture.isEnabled = true
                
                
                print(newCenterVase.isHidden)
                print(vaseCompletedRounds.isHidden)
                print(vaseWithRound1Vitaminote.isHidden)
                print(round1VitamineSequence)
                
                if(newCenterVase.isHidden && (vaseCompletedRounds.isHidden && !vaseWithRound1Vitaminote.isHidden) && round1VitamineSequence){
                    vitaminoteSequence = Array(repeating: false, count:7)
                    newCenterVase.isHidden = true
                    vaseWithRound1Vitaminote.isHidden = false
                    round1VitamineSequence = false
                    
                    
                    print("entrou no if 1")
                    
                    print(newCenterVase.isHidden)
                    print(vaseCompletedRounds.isHidden)
                    print(vaseWithRound1Vitaminote.isHidden)
                    print(round1VitamineSequence)
                }
                    
                else if((newCenterVase.isHidden && vaseCompletedRounds.isHidden) && !vaseWithRound1Vitaminote.isHidden && round2VitamineSequence){
                    print("entoru no if 2")
                    print(newCenterVase.isHidden)
                    print("Vaso completo round \(vaseCompletedRounds.isHidden)")
                    print(vaseWithRound1Vitaminote.isHidden)
                    vaseWithRound1Vitaminote.isHidden = true
                    vaseCompletedRounds.isHidden = false
                    print("Vaso completo round \(vaseCompletedRounds.isHidden)")
                    round2VitamineSequence = false
                    
                    poupUpTwoWoman.isHidden = true
                    poupUpOneWoman.isHidden = true // pode criar outro pop falando q recomecou, ver colocar som para cada vitaminota, e quando rodar o round, errar.. etc..
                    
                    buttonToNext.isEnabled = true
                    buttonToNext.setImage(UIImage(named: "buttons/proximaFaseButtonVerde"), for: .normal)
                    poupUpCongratsLevelOne.isHidden = false
                }
            }
        }
    }
    
    @objc func handlePanFaSharpVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            
            
            gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
            faSharpVitaminote.frame =  CGRect(x: 186, y: 774, width: 62, height: 62)
            gesture.isEnabled = true
        }
    }
    
    @objc func handlePanSolSharpVitaminote(_ gesture: UIPanGestureRecognizer) {
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
        
        // if(isSeedOntheVase(gestureView))
        let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
        
        if centerVaseRect.contains(gestureView.frame) {
            // print("A vitamina foi colocada no vaso")
            gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
            solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
            gesture.isEnabled = true
        }
    }
}//end class level 1

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
