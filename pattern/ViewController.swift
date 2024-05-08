import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    let imgView = UIImageView()
    let label = UILabel()
    
    let au = UIImage(named: "spbau.jpg")
    let polit = UIImage(named: "spbstu.jpg")
    let su = UIImage(named: "spbsu.jpg")
    let itmo = UIImage(named: "itmo.png")
    let suai = UIImage(named: "suai.jpg")
    let leti = UIImage(named: "leti.jpg")
    let spbsti = UIImage(named: "spbsti.jpg")

    
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
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        button.addTarget(self, action: #selector(dispImage(sender: )), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func dispImage(sender:Any){
        let imgs = [au! :"СПБАУ",polit! :"Политех",su! :"СПБГУ",itmo!:"ИТМО",suai!:"ГУАП",spbsti!:"СПБГТИ",leti!:"ЛЭТИ"]
        let rndPick = imagePicker(imgs: imgs, imgView: imgView, label: label, viewCon: self)
        rndPick.display()
    }
}

