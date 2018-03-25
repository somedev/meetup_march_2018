  
import UIKit
import PlaygroundSupport
  
  
  class PlaygroundControler:UIViewController {
    override func viewDidLoad() {
        view.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
        view.backgroundColor = .white
        let label = UILabel()
        view.addSubview(label)
        
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 20, width: 500, height: 200)
        
//      label.apply(style: LabelStyle.noteStyle)
        
        view
    }
  }
  
  let controller = PlaygroundControler()
  PlaygroundPage.current.liveView = controller
  
  
  
  
  
  
  
  
  
  
  
  
////-----
//  protocol Style {
//    associatedtype T
//    func setupStyle(to stylable:T)
//  }
//
//  protocol Stylable {
//    func apply<S:Style>(style:S) where S.T == Self
//  }
//
//  extension Stylable {
//    func apply<S:Style>(style:S) where S.T == Self {
//        style.setupStyle(to: self)
//    }
//  }
//
//  struct LabelStyle:Style {
//    let bgColor:UIColor
//    let textColor:UIColor
//    let align:NSTextAlignment
//    let font:UIFont
//
//    func setupStyle(to stylable: UILabel) {
//        stylable.backgroundColor = bgColor
//        stylable.textColor = textColor
//        stylable.textAlignment = align
//        stylable.font = font
//    }
//  }
//
//  extension LabelStyle {
//    static let headerStyle:LabelStyle = LabelStyle(bgColor: .white, textColor: .red, align: .center, font: UIFont.systemFont(ofSize: 150, weight: .bold) )
//
//    static let noteStyle:LabelStyle = LabelStyle(bgColor: .green, textColor: .white, align: .left, font: UIFont.systemFont(ofSize: 80, weight: .thin) )
//  }
//
//  extension UILabel:Stylable {}




