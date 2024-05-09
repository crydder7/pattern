import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    let imgView = UIImageView()
    let label = UILabel()
    let disp = pictures()
    
    let au = UIImage(named: "spbau.png")
    let polit = UIImage(named: "spbstu.png")
    let su = UIImage(named: "spbsu.png")
    let itmo = UIImage(named: "itmo.png")
    let suai = UIImage(named: "suai.png")
    let leti = UIImage(named: "leti.png")
    let spbsti = UIImage(named: "spbsti.png")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayButton()
        view.addSubview(imgView)
        view.addSubview(label)
    }

    func displayButton(){
        button.frame = CGRect(x: 0, y: 650, width: 200, height: 40)
        button.center.x = view.center.x
        button.setTitle("Random", for: .normal)
        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        button.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowOpacity = 0.5
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        button.addTarget(self, action: #selector(dispImage(sender: )), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func dispImage(sender:Any){
        disp.viewDidLoad()
        self.present(disp, animated: true)
    }
}

