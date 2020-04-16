import UIKit
import PlaygroundSupport

public class LevelTwoViewController: UIViewController {
    
    public override func loadView() {  ///Carega/Cria a view
        
        
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
