import UIKit
import PlaygroundSupport


public class FinalViewController: UIViewController {
    
    public override func loadView() {  ///Carega/Cria a view
        
        
        let view = UIView()
        view.backgroundColor = .white//colocar imagem
        
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Congrats!"
        label.textColor = .black
        
        
        view.addSubview(label)
        self.view = view
    }
}
