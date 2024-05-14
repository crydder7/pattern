import Foundation
import UIKit

class imagePicker{
    let imgs : [UIImage:String]
    var universities : [University]
    let imgView : UIImageView
    let label : UILabel
    let viewCon : UIViewController
    let size : CGFloat
    let xCoordinate : CGFloat
    let yCoordinate : CGFloat
    let infoButton : UIButton
    
    init(imgs: [UIImage : String], imgView: UIImageView, label: UILabel, viewCon: UIViewController, size : CGFloat, xCoordinate: CGFloat, yCoordinate: CGFloat, infoButton: UIButton) {
        self.imgs = imgs
        self.imgView = imgView
        self.label = label
        self.viewCon = viewCon
        self.size = size
        self.xCoordinate = xCoordinate
        self.yCoordinate = yCoordinate
        self.infoButton = infoButton
        self.universities = []
        for i in self.imgs.keys{
            self.universities.append(University(name: self.imgs[i]!, logo: i))
        }
    }
    
    func display()->String{
        let uni = universities.randomElement()
        let pic = uni?.logo
        let name = uni?.name
//        let picToUnwrap = imgs.keys.randomElement()
//        guard let rndPic = picToUnwrap else {return}
//        let rndText = imgs[rndPic]
        imgView.image = pic
        label.text = name
        return uni!.description
    }
    
    func setupImg(){
        imgView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        imgView.center.x = xCoordinate
        imgView.center.y = yCoordinate
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
    }
}


class University{
    let name : String
    let logo : UIImage
    lazy var description = "This is \(name)"
    
    init(name: String, logo: UIImage) {
        self.name = name
        self.logo = logo
    }
}
