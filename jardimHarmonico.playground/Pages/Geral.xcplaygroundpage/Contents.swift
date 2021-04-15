//: # Harmonic Garden - WWDC 2021
//: ### 2021 by @julianoctvaz - Apple Developer Academy - UFPE
import UIKit
import PlaygroundSupport
/*:
 ---
 */
//:Welcome to playground game!
//:This is my Harmonic Garden. Here, our *mission* is grown up plants with notes and musical scales!
//:Notes, scales, chrords, combinations, melodies, all of it, create a lof of hamonic compostion sounds!
//:At this case, we will beginning with a couple of scales from major scale.
//:More especifically, **three ** scales of it.  Oftenly, the major scale has a central importance to begginers.
//:Now, I recommend you to read the page **About Scale And Notes** below!
/*:
 ---
 */
//: [Scale and Notes ](AboutScaleAndNotes)
//: [/ References and Credits](References)
/*:
 ---
 */
//: Are you ready? **Execute it!**
/// Present the view controller (vc) in the Live View window
let onboardingViewController = OnboardingViewController()
let levelOneViewController = LevelOneViewController()
let levelTwoViewController = LevelTwoViewController()

let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.pushViewController(onboardingViewController, animated: true)

PlaygroundPage.current.liveView = navigation.scaleToFit()



