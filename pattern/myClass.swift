import Foundation
import UIKit

class imagePicker{
    let imgs : [UIImage:String]
    let imgView : UIImageView
    let label : UILabel
    let viewCon : UIViewController
    init(imgs: [UIImage : String], imgView: UIImageView, label: UILabel, viewCon: UIViewController) {
        self.imgs = imgs
        self.imgView = imgView
        self.label = label
        self.viewCon = viewCon
    }
    
    func display(){
        imgView.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
        imgView.center = viewCon.view.center
        imgView.layer.shadowOffset = CGSize(width: 10, height: 15)
        imgView.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        imgView.layer.shadowOpacity = 0.5
        label.frame = CGRect(x: 0, y: 50, width: 150, height: 35)
        label.textAlignment = .center
        label.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        label.layer.borderWidth = 5
        label.layer.cornerRadius = 15
        label.font = .systemFont(ofSize: 20)
        label.textColor = .black
        label.layer.shadowOffset = CGSize(width: 10, height: 10)
        label.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.layer.shadowOpacity = 0.5
        label.center.x = viewCon.view.center.x
        let picToUnwrap = imgs.keys.randomElement()
        guard let rndPic = picToUnwrap else {return}
        let rndText = imgs[rndPic]
        imgView.image = rndPic
        label.text = rndText
    }
}
