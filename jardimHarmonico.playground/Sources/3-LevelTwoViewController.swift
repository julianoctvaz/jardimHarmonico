import UIKit
import PlaygroundSupport

public class LevelTwoViewController: UIViewController {
    
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
    
    let vaseWithG = UIImageView()
    let vaseWithGA = UIImageView()
    let vaseWithGAB = UIImageView()
    let vaseWithGABC = UIImageView()
    let vaseWithGABCD = UIImageView()
    let vaseWithGABCDE = UIImageView()
    let vaseWithGABCDEFSharp = UIImageView()
    
    let circleNotes = UIImageView()
    let newCenterVase = UIImageView()
    let faliedVase = UIImageView()
    let titleGarden = UIImageView()
    //PoupUps
    let poupUpMan = UIImageView()
    let poupUpNextLevel = UIImageView()
    let poupUpOneWoman = UIImageView()
    let poupUpTwoWoman = UIImageView()
    let poupUpCongratsLevelOne = UIImageView()
    let poupUpTryAgain = UIImageView()
    //SeedLevelOne
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
//    var round2VitamineSequence = true
    
    
    public override func loadView() { ///Carega/Cria a view
        
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
            
            seedRe.image = UIImage(named: "sementes/sementeReCinza")
            seedRe.frame = CGRect(x: 136, y: 450, width: 57, height: 77)
            //seedRe.isUserInteractionEnabled = false
            
            seedSol.image = UIImage(named: "sementes/sementeSolVerde")
            seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
            // seedSol.isUserInteractionEnabled = false
            
            centerVase.image = UIImage(named: "vasos/vasoComTerra")
            centerVase.frame = CGRect(x: 860, y: 397, width: 100, height: 95)
            
            newCenterVase.image = UIImage(named: "crescimentoPlanta/raizAposSemente")
            newCenterVase.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            newCenterVase.isHidden = true
            
            vaseWithG.image = UIImage(named: "vasos/levelTwo/vasoComSol")
            vaseWithG.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithG.isHidden = true
            
            vaseWithGA.image = UIImage(named: "vasos/levelTwo/vasoComSolLa")
            vaseWithGA.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithGA.isHidden = true
            
            vaseWithGAB.image = UIImage(named: "vasos/levelTwo/vasoComSolLaSi")
            vaseWithGAB.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithGAB.isHidden = true
            
            vaseWithGABC.image = UIImage(named: "vasos/levelTwo/vasoComSolLaSiDo")
            vaseWithGABC.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithGABC.isHidden = true
            
            vaseWithGABCD.image = UIImage(named: "vasos/levelTwo/vasoComSolLaSiDoRe")
            vaseWithGABCD.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithGABCD.isHidden = true
            
            vaseWithGABCDE.image = UIImage(named: "vasos/levelTwo/vasoComSolLaSiDoReMi")
            vaseWithGABCDE.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaseWithGABCDE.isHidden = true
            
            vaseWithGABCDEFSharp.image = UIImage(named: "vasos/levelTwo/vasoComSolLaSiDoReMiFasus")
            vaseWithGABCDEFSharp.frame = CGRect(x: 841, y: 306, width: 135, height: 185)
            vaseWithGABCDEFSharp.isHidden = true
            
            faliedVase.image = UIImage(named: "crescimentoPlanta/plantaMorreu")
            faliedVase.frame = CGRect(x: 839, y: 306, width: 139, height: 185)
            faliedVase.isHidden = true
            
            
            poupUpMan.image = UIImage(named: "poupUp/poupUpHomem")
            poupUpMan.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
            
            poupUpOneWoman.image = UIImage(named: "poupUp/poupUp1Mulher")
            poupUpOneWoman.frame = CGRect(x: 377, y: 599, width: 250, height: 208)
            poupUpOneWoman.isHidden = true //comeca inativo
            
            poupUpTwoWoman.image = UIImage(named: "poupUp/poupUp2Mulher")
            poupUpTwoWoman.frame = CGRect(x: 235, y: 22, width: 227, height: 200)
            poupUpTwoWoman.isHidden = true //comeca inativo
            
            poupUpCongratsLevelOne.image = UIImage(named: "poupUp/parabensFase2")
            poupUpCongratsLevelOne.frame = CGRect(x: 235, y: 22, width: 191, height: 203)
            poupUpCongratsLevelOne.isHidden = true //comeca inativo
            
            poupUpTryAgain.image = UIImage(named: "poupUp/falaErroJogada")
            poupUpTryAgain.frame = CGRect(x: 235, y: 22, width: 191, height: 203) //ver aqui as dimensoes e posicao
            poupUpTryAgain.isHidden = true
            
            poupUpNextLevel.image = UIImage(named: "poupUp/falaProximaFase")
            poupUpNextLevel.frame = CGRect(x: 377, y: 599, width: 197, height: 155) //ver aqui as dimensoes e posicao
            poupUpNextLevel.isHidden = true
        }//several frames and UIImagensView
        
        
        if(true){
            seedSol.isUserInteractionEnabled = true
            let panseedSol = UIPanGestureRecognizer(target: self, action: #selector(self.handlePanseedSol))
            seedSol.addGestureRecognizer(panseedSol)
            
            //            seedRe.isUserInteractionEnabled = true
            //            let panSeedRe = UITapGestureRecognizer(target: self, action: #selector(self.handlePanSeedRe))
            //            seedRe.addGestureRecognizer(panSeedRe)
            //
            
            circleNotes.image = UIImage(named: "diversos/auraCircularDeNotas")
            circleNotes.frame = CGRect(x: 87, y: 620, width: 263, height: 263)
            //circleNotes.alpha = 0.9
            
            doVitaminote.image = UIImage(named: "vitaminas/doVitaminota")
            doVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
            doVitaminote.isUserInteractionEnabled = true
            let panDoVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanDoVitaminote))
            doVitaminote.addGestureRecognizer(panDoVitaminote)
            
            reVitaminote.image = UIImage(named: "vitaminas/reVitaminota")
            reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
            reVitaminote.isUserInteractionEnabled = true
            let panReVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanReVitaminote))
            reVitaminote.addGestureRecognizer(panReVitaminote)
            
            miVitaminote.image = UIImage(named: "vitaminas/miVitaminota")
           miVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
            miVitaminote.isUserInteractionEnabled = true
            let panMiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanMiVitaminote))
            miVitaminote.addGestureRecognizer(panMiVitaminote)
            
            faVitaminote.image = UIImage(named: "vitaminas/faVitaminota")
            faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            faVitaminote.isUserInteractionEnabled = true
            let panFaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanFaVitaminote))
            faVitaminote.addGestureRecognizer(panFaVitaminote)
            
            solVitaminote.image = UIImage(named: "vitaminas/solVitaminota")
           solVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
            solVitaminote.isUserInteractionEnabled = true
            let panSolVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSolVitaminote))
            solVitaminote.addGestureRecognizer(panSolVitaminote)
            
            laVitaminote.image = UIImage(named: "vitaminas/laVitaminota")
            laVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
            laVitaminote.isUserInteractionEnabled = true
            let panLaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanLaVitaminote))
            laVitaminote.addGestureRecognizer(panLaVitaminote)
            
            siVitaminote.image = UIImage(named: "vitaminas/siVitaminota")
            siVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
            siVitaminote.isUserInteractionEnabled = true
            let panSiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSiVitaminote))
            siVitaminote.addGestureRecognizer(panSiVitaminote)
            
            faSharpVitaminote.image = UIImage(named: "vitaminas/faSustenidoVitaminota")
            faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
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
            view.addSubview(vaseWithG)
            view.addSubview(vaseWithGA)
            view.addSubview(vaseWithGAB)
            view.addSubview(vaseWithGABC)
            view.addSubview(vaseWithGABCD)
            view.addSubview(vaseWithGABCDE)
            view.addSubview(vaseWithGABCDEFSharp)
//            view.addSubview(vaseWithRound1Vitaminote)
//            view.addSubview(vaseWithGABCDEFSharp)
            view.addSubview(faliedVase)
            //Butons
            view.addSubview(buttonToReset)
            view.addSubview(buttonToNext)
            view.addSubview(buttonToOnboarding)
            //Boards
            view.addSubview(manBoard)
            view.addSubview(womanBoard)
            view.addSubview(circleNotes)
            //Internal Man Board
            view.addSubview(seedRe)
            view.addSubview(seedSol)
            //PoupUps
            view.addSubview(poupUpMan)
            view.addSubview(poupUpOneWoman)
            view.addSubview(poupUpTwoWoman)
            view.addSubview(poupUpCongratsLevelOne)
            view.addSubview(poupUpTryAgain)
            view.addSubview(poupUpNextLevel)
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
        let novaViewController = LevelTwoViewController(screenType: .mac , isPortrait: true)
        navigationController?.pushViewController(novaViewController, animated: false)
        // print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        print("Apertou botão reset lvl 2")
        
    }
    
    @IBAction func touchedButtonNextLevel() {
        print("Apertou botão da LVL2 para ir para a lv3")
        
        let novaViewController = LevelThreeViewController(screenType: .mac , isPortrait: true)
        //  navigationController?.popViewController( animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        
        print("Apertou botão proxima Fase")
    }
    
    @IBAction func touchedButtonToBackToOnboarding() {
        print("Apertou botão para voltar a OnboardingViewController ")
        let novaViewController = OnboardingViewController(screenType: .mac , isPortrait: true)
        navigationController?.popViewController( animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
    }
    
    
    ///objc functions
    
    //erro cabuloso aqui nessas duas funcoes, penso em fazer um dispatch_async com um balao falando que nao pode ate passar de lvl
    
    /*  @objc func handlePanSeedRe(_ gesture: UIPanGestureRecognizer){
     print("Tapped on Image Seed Re")
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
     //let centerVaseRect = CGRect(x: 830, y: 370, width: 200, height: 200)
     if(gesture.state == .ended){
     
     seedRe.frame = CGRect(x: 136, y: 450, width: 57, height: 77)
     
     }
     
     }
     */
    
    
    @objc func handlePanseedSol(_ gesture: UIPanGestureRecognizer) {
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
        if (centerVaseRect.contains(gestureView.frame) && gesture.state == .ended){
            
            self.newCenterVase.alpha = 0.0
            
            UIImageView.animate(withDuration: 1, animations: {
                self.newCenterVase.isHidden = false
                self.newCenterVase.alpha = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                    self.centerVase.isHidden = true
                })
                
            })
            
            print("Semente foi colocada no vaso")
            seedSol.isHidden = true
   
            poupUpMan.isHidden = true
            poupUpOneWoman.isHidden = false
            //faça x coisa se estiver dentro do vaso
            
            print(newCenterVase.isHidden)
            print(vaseWithGABCDEFSharp.isHidden)
//            print(vaseWithRound1Vitaminote.isHidden)
            
        }
            
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
            }
        }
        
        //print("Semente do Dó foi tocada!")
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
               solVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
            }
                
            else if(!vitaminoteSequence[0] ){//valida a sequencia
                //  if(vitaminoteSequence[0] == true){//valida a sequencia
                vitaminoteSequence[0] = true
                
                self.vaseWithG.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithG.isHidden = false
                    self.vaseWithG.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.newCenterVase.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                solVitaminote.isHidden = true

                
            }
            else{
                //acho que nunca vai entrar nesse else aqui na vitaminota do do
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
                
                
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
               solVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[0] == true && vitaminoteSequence[1] == false){//valida a sequencia
                vitaminoteSequence[1] = true
                self.vaseWithGA.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGA.isHidden = false
                    self.vaseWithGA.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithG.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                laVitaminote.isHidden = true

                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
               laVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
                
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
               laVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[1] == true && vitaminoteSequence[2] == false){//valida a sequencia
                vitaminoteSequence[2] = true
                
                self.vaseWithGAB.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGAB.isHidden = false
                    self.vaseWithGAB.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithGA.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                siVitaminote.isHidden = true
                
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
               siVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
                
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
               siVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
            }
            
        }
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[2] == true && vitaminoteSequence[3] == false){//valida a sequencia
                vitaminoteSequence[3] = true
                self.vaseWithGABC.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGABC.isHidden = false
                    self.vaseWithGABC.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithGAB.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                doVitaminote.isHidden = true
         
                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                doVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
                
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                doVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[3] == true && vitaminoteSequence[4] == false){//valida a sequencia
                vitaminoteSequence[4] = true
                self.vaseWithGABCD.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGABCD.isHidden = false
                    self.vaseWithGABCD.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithGABC.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                reVitaminote.isHidden = true
       
                
            } else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    // vaseWithRound1Vitaminote.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
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
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[4] == true && vitaminoteSequence[5] == false){//valida a sequencia
                vitaminoteSequence[5] = true
                
                self.vaseWithGABCDE.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGABCDE.isHidden = false
                    self.vaseWithGABCDE.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithGABCD.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                miVitaminote.isHidden = true
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
               miVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
            }
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
               miVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
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
        
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
              faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
            }
                
                
            else if(vitaminoteSequence[5] == true && vitaminoteSequence[6] == false){//valida a sequencia
                vitaminoteSequence[6] = true
                self.vaseWithGABCDEFSharp.alpha = 0.0
                
                UIImageView.animate(withDuration: 1, animations: {
                    self.vaseWithGABCDEFSharp.isHidden = false
                    self.vaseWithGABCDEFSharp.alpha = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.2, execute: {
                        self.vaseWithGABCDE.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                print(vitaminoteSequence)
                faSharpVitaminote.isHidden = true
                //gesture.reset() // ver o que essa funcao faz
                
                
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = false
                newCenterVase.isHidden = true
                
//                vaseWithRound1Vitaminote.isHidden = false
                
                print(newCenterVase.isHidden)
                print(vaseWithGABCDEFSharp.isHidden)
//                print(vaseWithRound1Vitaminote.isHidden)
                print(round1VitamineSequence)
               
       
                    //essasaqui sao as que ficam sobrando
                    faVitaminote.isHidden = true
                    solSharpVitaminote.isHidden = true
//
                    circleNotes.isHidden = false
//
                    poupUpNextLevel.isHidden = false
                    poupUpTwoWoman.isHidden = true
//                    poupUpOneWoman.isHidden = true // pode criar outro pop falando q recomecou, ver colocar som para cada vitaminota, e quando rodar o round, errar.. etc..
//
                    buttonToNext.isEnabled = true
                    buttonToNext.setImage(UIImage(named: "buttons/proximaFaseButtonVerde"), for: .normal)
                    poupUpCongratsLevelOne.isHidden = false

            }
            else{
                
                
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
              faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    newCenterVase.isHidden = true
                    vaseWithG.isHidden = true
                    vaseWithGA.isHidden = true
                    vaseWithGAB.isHidden = true
                    vaseWithGABC.isHidden = true
                    vaseWithGABCD.isHidden = true
                    vaseWithGABCDE.isHidden = true
                    vaseWithGABCDEFSharp.isHidden = true
                    faliedVase.isHidden = false
                    
                    poupUpMan.isHidden = true
                    poupUpOneWoman.isHidden = true
                    poupUpTwoWoman.isHidden = true
                    poupUpCongratsLevelOne.isHidden = true
                    
                    poupUpTryAgain.isHidden = false
                    
                    doVitaminote.isUserInteractionEnabled = false
                    reVitaminote.isUserInteractionEnabled = false
                    miVitaminote.isUserInteractionEnabled = false
                    faVitaminote.isUserInteractionEnabled = false
                    solVitaminote.isUserInteractionEnabled = false
                    laVitaminote.isUserInteractionEnabled = false
                    siVitaminote.isUserInteractionEnabled = false
                    faSharpVitaminote.isUserInteractionEnabled = false
                    solSharpVitaminote.isUserInteractionEnabled = false
                }
                
                
            }
        }
        else if(gesture.state == .ended){
            print("entrou aqui na condicional que eu qeuria")
            if (!centerVaseRect.contains(gestureView.frame)){
                print("entrou aqui na condicional que eu qeuria 2")
              faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
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
    
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            }
                
                
            else if(!newCenterVase.isHidden){
                newCenterVase.isHidden = true
                vaseWithG.isHidden = true
                vaseWithGA.isHidden = true
                vaseWithGAB.isHidden = true
                vaseWithGABC.isHidden = true
                vaseWithGABCD.isHidden = true
                vaseWithGABCDE.isHidden = true
                vaseWithGABCDEFSharp.isHidden = true
                faliedVase.isHidden = false
                
                doVitaminote.isUserInteractionEnabled = false
                reVitaminote.isUserInteractionEnabled = false
                miVitaminote.isUserInteractionEnabled = false
                faVitaminote.isUserInteractionEnabled = false
                solVitaminote.isUserInteractionEnabled = false
                laVitaminote.isUserInteractionEnabled = false
                siVitaminote.isUserInteractionEnabled = false
                faSharpVitaminote.isUserInteractionEnabled = false
                solSharpVitaminote.isUserInteractionEnabled = false
                
                poupUpMan.isHidden = true
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = true
                poupUpCongratsLevelOne.isHidden = true
                
                poupUpTryAgain.isHidden = false
                
                // gestureView.isUserInteractionEnabled = true
            }else{
                // vaseWithRound1Vitaminote.isHidden = true
                faliedVase.isHidden = false
                
                poupUpMan.isHidden = true
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = true
                poupUpCongratsLevelOne.isHidden = true
                
                poupUpTryAgain.isHidden = false
                
                doVitaminote.isUserInteractionEnabled = false
                reVitaminote.isUserInteractionEnabled = false
                miVitaminote.isUserInteractionEnabled = false
                faVitaminote.isUserInteractionEnabled = false
                solVitaminote.isUserInteractionEnabled = false
                laVitaminote.isUserInteractionEnabled = false
                siVitaminote.isUserInteractionEnabled = false
                faSharpVitaminote.isUserInteractionEnabled = false
                solSharpVitaminote.isUserInteractionEnabled = false
            }
            
            faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            }
            
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
        
        //         gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
        //        solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
        //        gesture.isEnabled = true
        
        if centerVaseRect.contains(gestureView.frame) && gesture.state == .ended {
            // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
            }
                
                
                
                
            else if(!newCenterVase.isHidden){
                newCenterVase.isHidden = true
                faliedVase.isHidden = false
                
                doVitaminote.isUserInteractionEnabled = false
                reVitaminote.isUserInteractionEnabled = false
                miVitaminote.isUserInteractionEnabled = false
                faVitaminote.isUserInteractionEnabled = false
                solVitaminote.isUserInteractionEnabled = false
                laVitaminote.isUserInteractionEnabled = false
                siVitaminote.isUserInteractionEnabled = false
                faSharpVitaminote.isUserInteractionEnabled = false
                solSharpVitaminote.isUserInteractionEnabled = false
                
                poupUpMan.isHidden = true
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = true
                poupUpCongratsLevelOne.isHidden = true
                
                poupUpTryAgain.isHidden = false
                
                
                // gestureView.isUserInteractionEnabled = true
            }
            else{
                // vaseWithRound1Vitaminote.isHidden = true
                faliedVase.isHidden = false
                
                poupUpMan.isHidden = true
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = true
                poupUpCongratsLevelOne.isHidden = true
                
                poupUpTryAgain.isHidden = false
                
                doVitaminote.isUserInteractionEnabled = false
                reVitaminote.isUserInteractionEnabled = false
                miVitaminote.isUserInteractionEnabled = false
                faVitaminote.isUserInteractionEnabled = false
                solVitaminote.isUserInteractionEnabled = false
                laVitaminote.isUserInteractionEnabled = false
                siVitaminote.isUserInteractionEnabled = false
                faSharpVitaminote.isUserInteractionEnabled = false
                solSharpVitaminote.isUserInteractionEnabled = false
                
                
            }
            
            solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
            
            
        }
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
            }
            
        }
    }
}//end class level 2
