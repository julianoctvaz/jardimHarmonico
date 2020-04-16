import UIKit
import PlaygroundSupport


public class LevelThreeViewController: UIViewController {
    
    public override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World to Level one!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
    
    public override func viewDidLoad() {}///chamada quando a view, criada via storyboard, termina de ser carregada
}

