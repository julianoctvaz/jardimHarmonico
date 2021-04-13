import UIKit
import PlaygroundSupport

public class OnboardingViewController: UIViewController {

    //Buttons and Labels
    let buttonToNext = UIButton()

    public override func loadView() { ///Carega/Cria a view
        //setting Buttons
        buttonToNext.frame = CGRect(x: 1200, y: 820, width: 250, height: 100)
        buttonToNext.setImage(UIImage(named: "buttons/jogarButton"), for: .normal)


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
        let novaViewController = LevelTwoViewController(screenType: .mac , isPortrait: true)
        // navigationController?.popViewController(animated: true)
        navigationController?.pushViewController(novaViewController, animated: true)
        //coloca em cima da onboard a tela level 1
        navigationController?.navigationBar.isHidden = true

    }
    //aqui pode ter outros buttons(IBActions) para validar se passou do lvl1 e quiser voltar ja ir para o lvl 2 ao inves de ter de voltar pro comeco

}
