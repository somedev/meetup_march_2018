  
import UIKit
import PlaygroundSupport

//-----
public protocol Style {
    associatedtype T
    func setStyle(to stylable:T)
}

public protocol Stylable {
    func apply<S:Style>(style s:S) where S.T == Self
}

extension Stylable {
    public func apply<S:Style>(style s:S) where S.T == Self {
        s.setStyle(to: self)
    }
}

//------
struct LabelStyle:Style {
    let bgColor:UIColor
    let textColor:UIColor
    let align:NSTextAlignment
    let font:UIFont
    
    func setStyle(to stylable: UILabel) {
        stylable.backgroundColor = bgColor
        stylable.textColor = textColor
        stylable.textAlignment = align
        stylable.font = font
    }
}

extension LabelStyle {
    static let headerStyle:LabelStyle = LabelStyle(bgColor: .white, textColor: .black, align: .center, font: UIFont.systemFont(ofSize: 20, weight: .bold) )
    
    static let noteStyle:LabelStyle = LabelStyle(bgColor: .white, textColor: .black, align: .left, font: UIFont.systemFont(ofSize: 11, weight: .thin) )
}


extension UILabel:Stylable {}


class PlaygroundControler:UIViewController {
    override func viewDidLoad() {

        view.backgroundColor = .white
        let label = UILabel()
        view.addSubview(label)
        
        label.text = "Hello"
        label.frame = CGRect(x: 100, y: 20, width: 50, height: 20)
        
        label.apply(style: LabelStyle.noteStyle)
        
        view
    }
}

let controller = PlaygroundControler()
PlaygroundPage.current.liveView = controller

