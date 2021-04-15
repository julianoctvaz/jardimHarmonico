import UIKit
import PlaygroundSupport
import AVFoundation

public class LevelThreeViewController: UIViewController {
    
    //audio
    private var buttonAudioPlayer: AVAudioPlayer?
    private var correctAudioPlayer: AVAudioPlayer?
    private var incorrectAudioPlayer: AVAudioPlayer?
    private var clappingAudioPlayer:AVAudioPlayer?
    
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
    
    let vaaseWithD = UIImageView()
    let vaaseWithDE = UIImageView()
    let vaaseWithDEFSharp = UIImageView()
    let vaaseWithDEFSharpG = UIImageView()
    let vaaseWithDEFSharpGA = UIImageView()
    let vaaseWithDEFSharpGAB = UIImageView()
    let vaaseWithDEFSharpGABCsharp = UIImageView()
    
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
    let reVitaminote = UIImageView() //1
    let miVitaminote = UIImageView() //2
    let doVitaminote = UIImageView() //3
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
        
        //audios
        do {
            buttonAudioPlayer = AVAudioPlayer()
            buttonAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sounds/button", ofType: "mp3")!))
            buttonAudioPlayer?.prepareToPlay()
            
            correctAudioPlayer = AVAudioPlayer()
            correctAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sounds/correct", ofType: "wav")!))
            correctAudioPlayer?.prepareToPlay()
            
            incorrectAudioPlayer = AVAudioPlayer()
            incorrectAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sounds/incorrect", ofType: "wav")!))
            incorrectAudioPlayer?.prepareToPlay()
            
            clappingAudioPlayer = AVAudioPlayer()
            clappingAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sounds/clapping", ofType: "wav")!))
            clappingAudioPlayer?.prepareToPlay()
        }
        catch {
            // print("erro ao importar as musicas")
            // print(error)
        }
        
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
            
            seedSol.image = UIImage(named: "sementes/sementeReVerde")
            seedSol.frame = CGRect(x: 136, y: 450, width: 57, height: 77)
            //seedRe.isUserInteractionEnabled = false
            
            seedRe.image = UIImage(named: "sementes/sementeSolCinza")
            seedRe.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
            seedRe.isHidden = true
            // seedSol.isUserInteractionEnabled = false
            
            centerVase.image = UIImage(named: "vasos/vasoComTerra")
            centerVase.frame = CGRect(x: 860, y: 397, width: 100, height: 95)
            
            newCenterVase.image = UIImage(named: "crescimentoPlanta/raizAposSemente")
            newCenterVase.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            newCenterVase.isHidden = true
            
            vaaseWithD.image = UIImage(named: "vasos/levelThree/vasoComSol")
            vaaseWithD.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithD.isHidden = true
            
            vaaseWithDE.image = UIImage(named: "vasos/levelThree/vasoComSolLa")
            vaaseWithDE.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithDE.isHidden = true
            
            vaaseWithDEFSharp.image = UIImage(named: "vasos/levelThree/vasoComSolLaSi")
            vaaseWithDEFSharp.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithDEFSharp.isHidden = true
            
            vaaseWithDEFSharpG.image = UIImage(named: "vasos/levelThree/vasoComSolLaSiDo")
            vaaseWithDEFSharpG.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithDEFSharpG.isHidden = true
            
            vaaseWithDEFSharpGA.image = UIImage(named: "vasos/levelThree/vasoComSolLaSiDoRe")
            vaaseWithDEFSharpGA.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithDEFSharpGA.isHidden = true
            
            vaaseWithDEFSharpGAB.image = UIImage(named: "vasos/levelThree/vasoComSolLaSiDoReMi")
            vaaseWithDEFSharpGAB.frame = CGRect(x: 841, y: 306, width: 139, height: 185)
            vaaseWithDEFSharpGAB.isHidden = true
            
            vaaseWithDEFSharpGABCsharp.image = UIImage(named: "vasos/levelThree/vasoComSolLaSiDoReMiFasus")
            vaaseWithDEFSharpGABCsharp.frame = CGRect(x: 841, y: 306, width: 135, height: 185)
            vaaseWithDEFSharpGABCsharp.isHidden = true
            
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
            
            doVitaminote.image = UIImage(named: "vitaminas/solVitaminota")
            doVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
            doVitaminote.isUserInteractionEnabled = true
            let pandoSharpVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePandoSharpVitaminote))
            doVitaminote.addGestureRecognizer(pandoSharpVitaminote)
            
            reVitaminote.image = UIImage(named: "vitaminas/laVitaminota")
            reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
            reVitaminote.isUserInteractionEnabled = true
            let panReVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanReVitaminote))
            reVitaminote.addGestureRecognizer(panReVitaminote)
            
            miVitaminote.image = UIImage(named: "vitaminas/siVitaminota")
            miVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
            miVitaminote.isUserInteractionEnabled = true
            let panMiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanMiVitaminote))
            miVitaminote.addGestureRecognizer(panMiVitaminote)
            
            faVitaminote.image = UIImage(named: "vitaminas/faVitaminota")
            faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            faVitaminote.isUserInteractionEnabled = true
            let panFaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanFaVitaminote))
            faVitaminote.addGestureRecognizer(panFaVitaminote)
            
            solVitaminote.image = UIImage(named: "vitaminas/reVitaminota")
            solVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
            solVitaminote.isUserInteractionEnabled = true
            let panSolVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSolVitaminote))
            solVitaminote.addGestureRecognizer(panSolVitaminote)
            
            laVitaminote.image = UIImage(named: "vitaminas/miVitaminota")
            laVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
            laVitaminote.isUserInteractionEnabled = true
            let panLaVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanLaVitaminote))
            laVitaminote.addGestureRecognizer(panLaVitaminote)
            
            siVitaminote.image = UIImage(named: "vitaminas/faSharpVitaminota")
            siVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
            siVitaminote.isUserInteractionEnabled = true
            let panSiVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanSiVitaminote))
            siVitaminote.addGestureRecognizer(panSiVitaminote)
            
            faSharpVitaminote.image = UIImage(named: "vitaminas/doSharpVitaminota")
            faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
            faSharpVitaminote.isUserInteractionEnabled = true
            let panFaSharpVitaminote = UIPanGestureRecognizer(target: self, action: #selector(handlePanFaSharpVitaminote))
            faSharpVitaminote.addGestureRecognizer(panFaSharpVitaminote)
            
            solSharpVitaminote.image = UIImage(named: "vitaminas/solSharpVitaminota")
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
            view.addSubview(vaaseWithD)
            view.addSubview(vaaseWithDE)
            view.addSubview(vaaseWithDEFSharp)
            view.addSubview(vaaseWithDEFSharpG)
            view.addSubview(vaaseWithDEFSharpGA)
            view.addSubview(vaaseWithDEFSharpGAB)
            view.addSubview(vaaseWithDEFSharpGABCsharp)
            //            view.addSubview(vaseWithRound1Vitaminote)
            //            view.addSubview(vaaseWithDEFSharpGABCsharp)
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
        //// print(navigationController?.viewControllers)
        self.buttonAudioPlayer?.play()
        let novaViewController = LevelThreeViewController(screenType: .mac , isPortrait: true)
        navigationController?.pushViewController(novaViewController, animated: false)
        // // print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        // print("Apertou botão reset lvl 2")
        
    }
    
    @IBAction func touchedButtonNextLevel() {
        self.buttonAudioPlayer?.play()
        // print("Apertou botão da LVL2 para ir para a lv3")
        
        let novaViewController = FinalViewController(screenType: .mac , isPortrait: true)
        //  navigationController?.popViewController( animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //// print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
        
        // print("Apertou botão proxima Fase")
    }
    
    @IBAction func touchedButtonToBackToOnboarding() {
        self.buttonAudioPlayer?.play()
        // print("Apertou botão para voltar a OnboardingViewController ")
        let novaViewController = OnboardingViewController(screenType: .mac , isPortrait: true)
        navigationController?.popViewController( animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //// print(navigationController?.viewControllers)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true
    }
    
    
    ///objc functions
    
    //erro cabuloso aqui nessas duas funcoes, penso em fazer um dispatch_async com um balao falando que nao pode ate passar de lvl
    
    /*  @objc func handlePanSeedRe(_ gesture: UIPanGestureRecognizer){
     // print("Tapped on Image Seed Re")
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
            
            UIImageView.animate(withDuration: 0.3, animations: {
                self.newCenterVase.isHidden = false
                self.newCenterVase.alpha = 1.0
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                    self.correctAudioPlayer?.play()
                    self.centerVase.isHidden = true
                })
                
            })
            
            // print("Semente foi colocada no vaso")
            seedSol.isHidden = true
            
            poupUpMan.isHidden = true
            poupUpOneWoman.isHidden = false
            //faça x coisa se estiver dentro do vaso
            
            // print(newCenterVase.isHidden)
            // print(vaaseWithDEFSharpGABCsharp.isHidden)
            //            // print(vaseWithRound1Vitaminote.isHidden)
            
        }
        
        else if(gesture.state == .ended){
            if (!centerVaseRect.contains(gestureView.frame)){
                seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
            }
        }
        
        //// print("Semente do Dó foi tocada!")
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
            // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                solVitaminote.frame = CGRect(x: 186, y: 774, width: 62, height: 62)
            }
            
            else if(!vitaminoteSequence[0] ){//valida a sequencia
                //  if(vitaminoteSequence[0] == true){//valida a sequencia
                vitaminoteSequence[0] = true
                
                self.vaaseWithD.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithD.isHidden = false
                    self.vaaseWithD.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.newCenterVase.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                solVitaminote.isHidden = true
                
                
            }
            else{
                //acho que nunca vai entrar nesse else aqui na vitaminota do do
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                seedSol.frame = CGRect(x: 216, y: 450, width: 57, height: 77)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    self.incorrectAudioPlayer?.play()
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[0] == true && vitaminoteSequence[1] == false){//valida a sequencia
                vitaminoteSequence[1] = true
                self.vaaseWithDE.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDE.isHidden = false
                    self.vaaseWithDE.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithD.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                laVitaminote.isHidden = true
                
                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                laVitaminote.frame = CGRect(x: 124, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    
                    self.incorrectAudioPlayer?.play()
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[1] == true && vitaminoteSequence[2] == false){//valida a sequencia
                vitaminoteSequence[2] = true
                
                self.vaaseWithDEFSharp.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDEFSharp.isHidden = false
                    self.vaaseWithDEFSharp.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithDE.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                siVitaminote.isHidden = true
                
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                siVitaminote.frame = CGRect(x: 250, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    self.incorrectAudioPlayer?.play()
                    
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
    
    @objc func handlePandoSharpVitaminote(_ gesture: UIPanGestureRecognizer) {
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
            // // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[2] == true && vitaminoteSequence[3] == false){//valida a sequencia
                vitaminoteSequence[3] = true
                self.vaaseWithDEFSharpG.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDEFSharpG.isHidden = false
                    self.vaaseWithDEFSharpG.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithDEFSharp.isHidden = true
                        self.centerVase.isHidden = true
                    })
                    
                })
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                doVitaminote.isHidden = true
                
                
            }else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                doVitaminote.frame = CGRect(x: 250, y: 722, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    self.incorrectAudioPlayer?.play()
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[3] == true && vitaminoteSequence[4] == false){//valida a sequencia
                vitaminoteSequence[4] = true
                self.vaaseWithDEFSharpGA.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDEFSharpGA.isHidden = false
                    self.vaaseWithDEFSharpGA.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithDEFSharpG.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                reVitaminote.isHidden = true
                
                
            } else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                reVitaminote.frame = CGRect(x: 186, y: 669, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    self.incorrectAudioPlayer?.play()
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(vitaminoteSequence[4] == true && vitaminoteSequence[5] == false){//valida a sequencia
                vitaminoteSequence[5] = true
                
                self.vaaseWithDEFSharpGAB.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDEFSharpGAB.isHidden = false
                    self.vaaseWithDEFSharpGAB.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithDEFSharpGA.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                // print(vitaminoteSequence)
                //gesture.reset() // ver o que essa funcao faz
                miVitaminote.isHidden = true
                
            }
            else{
                gesture.isEnabled = false//pode tentar fazer um hidden relocalizar e dps deshidden
                miVitaminote.frame = CGRect(x: 124, y: 774, width: 62, height: 62)
                gesture.isEnabled = true
                
                if(centerVase.isHidden){
                    self.incorrectAudioPlayer?.play()
                    
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                faSharpVitaminote.frame = CGRect(x: 186, y: 722, width: 62, height: 62)
            }
            
            
            else if(vitaminoteSequence[5] == true && vitaminoteSequence[6] == false){//valida a sequencia
                vitaminoteSequence[6] = true
                self.vaaseWithDEFSharpGABCsharp.alpha = 0.0
                
                UIImageView.animate(withDuration: 0.3, animations: {
                    self.vaaseWithDEFSharpGABCsharp.isHidden = false
                    self.vaaseWithDEFSharpGABCsharp.alpha = 1.0
                    self.correctAudioPlayer?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4, execute: {
                        self.vaaseWithDEFSharpGAB.isHidden = true
                        self.centerVase.isHidden = true
                    })
                })
                
                
                
                // print(vitaminoteSequence)
                faSharpVitaminote.isHidden = true
                //gesture.reset() // ver o que essa funcao faz
                
                
                poupUpOneWoman.isHidden = true
                poupUpTwoWoman.isHidden = false
                newCenterVase.isHidden = true
                
                //                vaseWithRound1Vitaminote.isHidden = false
                
                // print(newCenterVase.isHidden)
                // print(vaaseWithDEFSharpGABCsharp.isHidden)
                //                // print(vaseWithRound1Vitaminote.isHidden)
                // print(round1VitamineSequence)
                
                
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
                    self.incorrectAudioPlayer?.play()
                    newCenterVase.isHidden = true
                    vaaseWithD.isHidden = true
                    vaaseWithDE.isHidden = true
                    vaaseWithDEFSharp.isHidden = true
                    vaaseWithDEFSharpG.isHidden = true
                    vaaseWithDEFSharpGA.isHidden = true
                    vaaseWithDEFSharpGAB.isHidden = true
                    vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // print("entrou aqui na condicional que eu qeuria")
            if (!centerVaseRect.contains(gestureView.frame)){
                // print("entrou aqui na condicional que eu qeuria 2")
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
            // // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                faVitaminote.frame = CGRect(x: 124, y: 722, width: 62, height: 62)
            }
            
            
            else if(!newCenterVase.isHidden){
                self.incorrectAudioPlayer?.play()
                
                newCenterVase.isHidden = true
                vaaseWithD.isHidden = true
                vaaseWithDE.isHidden = true
                vaaseWithDEFSharp.isHidden = true
                vaaseWithDEFSharpG.isHidden = true
                vaaseWithDEFSharpGA.isHidden = true
                vaaseWithDEFSharpGAB.isHidden = true
                vaaseWithDEFSharpGABCsharp.isHidden = true
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
                self.incorrectAudioPlayer?.play()
                vaaseWithD.isHidden = true
                vaaseWithDE.isHidden = true
                vaaseWithDEFSharp.isHidden = true
                vaaseWithDEFSharpG.isHidden = true
                vaaseWithDEFSharpGA.isHidden = true
                vaaseWithDEFSharpGAB.isHidden = true
                vaaseWithDEFSharpGABCsharp.isHidden = true
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
            // // print("A vitamina foi colocada no vaso")
            
            if(!centerVase.isHidden) { //se tiver o vaso so com terra tiver a mostra nao faca nada
                solSharpVitaminote.frame = CGRect(x: 250, y: 774, width: 62, height: 62)
            }
            
            
            
            
            else if(!newCenterVase.isHidden){
                newCenterVase.isHidden = true
                faliedVase.isHidden = false
                self.incorrectAudioPlayer?.play()
                vaaseWithD.isHidden = true
                vaaseWithDE.isHidden = true
                vaaseWithDEFSharp.isHidden = true
                vaaseWithDEFSharpG.isHidden = true
                vaaseWithDEFSharpGA.isHidden = true
                vaaseWithDEFSharpGAB.isHidden = true
                vaaseWithDEFSharpGABCsharp.isHidden = true
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
                self.incorrectAudioPlayer?.play()
                vaaseWithD.isHidden = true
                vaaseWithDE.isHidden = true
                vaaseWithDEFSharp.isHidden = true
                vaaseWithDEFSharpG.isHidden = true
                vaaseWithDEFSharpGA.isHidden = true
                vaaseWithDEFSharpGAB.isHidden = true
                vaaseWithDEFSharpGABCsharp.isHidden = true
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

