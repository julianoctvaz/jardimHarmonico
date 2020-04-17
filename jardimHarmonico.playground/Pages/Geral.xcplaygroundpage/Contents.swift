//: # Jardim Harmonico
//: ### @julianoctvaz (MiniChallenge 2020-1)
import UIKit
import PlaygroundSupport
//:Navegacao orientada ao Conteudo/Experiencia (Jogo)
/// Present the view controller (vc) in the Live View window
let onboardingViewController = OnboardingViewController()
let levelOneViewController = LevelOneViewController()
let levelTwoViewController = LevelTwoViewController()

let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.pushViewController(levelTwoViewController, animated: true)

PlaygroundPage.current.liveView = navigation.scale(to: 0.5)
//: [Ler poema](Poema)


