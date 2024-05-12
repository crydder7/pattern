import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    let imgView = UIImageView()
    let label = UILabel()
    let disp = pictures()
    let name = UILabel()
    
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
        
        //COMMENT THIS
        displayLabel()
    }

    func displayButton(){
        button.frame = CGRect(x: 0, y: 650, width: 300, height: 70)
        button.center.x = view.center.x
        button.setTitle("Random", for: .normal)
        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        button.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowOpacity = 0.5
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 5
        button.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 0.25)
        button.addTarget(self, action: #selector(dispImage(sender: )), for: .touchUpInside)
        button.addTarget(self, action: #selector(upButton(sender:)), for: .touchDown)
        view.addSubview(button)
    }
    
    func displayLabel(){
        name.frame = CGRect(x: 0, y: 50, width: 200, height: 100)
        name.center.x = view.center.x
        name.lineBreakMode = .byWordWrapping
        name.text = "Random University Picker"
        name.textAlignment = .center
        name.numberOfLines = 3
        name.font = .systemFont(ofSize: 25)
        name.layer.shadowOpacity = 0.7
        name.layer.shadowOffset = CGSize(width: 7, height: 7)
        name.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.addSubview(name)
    }
    
    @objc func dispImage(sender:Any){
        //UNCOMMENT THIS
//        let imgs = [au! :"СПБАУ",polit! :"Политех",su! :"СПБГУ",itmo!:"ИТМО",suai!:"ГУАП",spbsti!:"СПБГТИ",leti!:"ЛЭТИ"]
//        let rndPick = imagePicker(imgs: imgs, imgView: imgView, label: label, viewCon: self)
//        rndPick.display()
        
        button.frame = CGRect(x: 0, y: 650, width: 300, height: 70)
        button.layer.shadowOffset = CGSize(width: 10, height: 10)
        button.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        button.layer.shadowOpacity = 0.5
        button.center.x = view.center.x
        
        //COMMENT THIS
        disp.viewDidLoad()
        self.present(disp, animated: true)
    }
    
    @objc func upButton(sender:UIButton){
        button.frame = CGRect(x: 0, y: 650, width: 270, height: 60)
        button.center.x = view.center.x
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        button.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0)
        button.layer.shadowOpacity = 0
    }
}

