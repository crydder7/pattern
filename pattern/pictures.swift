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
    let infoButton = UIButton(type: .infoDark)
    var msg = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        let imgs = [au! :"СПБАУ",polit! :"Политех",su! :"СПБГУ",itmo!:"ИТМО",suai!:"ГУАП",spbsti!:"СПБГТИ",leti!:"ЛЭТИ"]
        let rndPick = imagePicker(imgs: imgs, imgView: imgView, label: label, viewCon: self, size: 350, xCoordinate: view.center.x, yCoordinate: view.center.y)
        rndPick.setupImg()
        msg = rndPick.display()
        infoButtonDisp()
        view.addSubview(imgView)
        view.addSubview(label)
    }
    
    func infoButtonDisp(){
        infoButton.frame = CGRect(x: label.center.x + 150, y: label.center.y - 10, width: 25, height: 25)
        infoButton.layer.shadowOffset = CGSize(width: 10, height: 10)
        infoButton.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        infoButton.layer.shadowOpacity = 0.5
        infoButton.tintColor = .black
        view.addSubview(infoButton)
        infoButton.addTarget(self, action: #selector(showInfo(sender:)), for: .touchUpInside)
    }
    
    @objc func showInfo(sender:UIButton){
        let alert = UIAlertController(title: msg, message: nil, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "Great", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}
