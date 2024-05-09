import UIKit

class pictures: UIViewController {
    
    let imgView = UIImageView()
    let label = UILabel()
    let au = UIImage(named: "spbau.png")
    let polit = UIImage(named: "spbstu.png")
    let su = UIImage(named: "spbsu.png")
    let itmo = UIImage(named: "itmo.png")
    let suai = UIImage(named: "suai.png")
    let leti = UIImage(named: "leti.png")
    let spbsti = UIImage(named: "spbsti.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        let imgs = [au! :"СПБАУ",polit! :"Политех",su! :"СПБГУ",itmo!:"ИТМО",suai!:"ГУАП",spbsti!:"СПБГТИ",leti!:"ЛЭТИ"]
        let rndPick = imagePicker(imgs: imgs, imgView: imgView, label: label, viewCon: self)
        rndPick.display()
        view.addSubview(imgView)
        view.addSubview(label)
    }

}
