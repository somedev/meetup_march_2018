//
//  ViewStyle.swift
//  Samples
//
//  Created by Eduard Panasiuk on 3/25/18.
//  Copyright © 2018 Eduard Panasiuk. All rights reserved.
//

import UIKit

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

class CheckboxView: UIView {
    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension CheckboxView:Stylable {}
extension UILabel:Stylable {}

extension ToDoItemView:Stylable {}

struct LabelStyle:Style {
//    let bgColor:UIColor
//    let textColor:UIColor
//    let align:NSTextAlignment
//    let font:UIFont
    
    func setStyle(to stylable: UILabel) {
//        stylable.backgroundColor = bgColor
//        stylable.textColor = textColor
//        stylable.textAlignment = align
//        stylable.font = font
    }
    
    static let defaultDateLabelStyle:LabelStyle = LabelStyle()
    
    
    static let defaultNameLabelStyle:LabelStyle = LabelStyle()
    
}

struct CheckboxStyle:Style {

    
    func setStyle(to stylable: CheckboxView) {

    }
    
    static let defaultStyle:CheckboxStyle = CheckboxStyle()
    
}


struct ToDoItemViewStyle:Style {
    
    let checkboxStyle:CheckboxStyle
    let dateLabelStyle:LabelStyle
    let nameLabelStyle:LabelStyle

    func setStyle(to stylable: ToDoItemView) {
        stylable.checkBox.apply(style: checkboxStyle)
        stylable.dateLabel.apply(style: dateLabelStyle)
        stylable.nameLabel.apply(style: nameLabelStyle)
    }

    static var defaultStyle:ToDoItemViewStyle {
        return ToDoItemViewStyle(checkboxStyle: CheckboxStyle.defaultStyle,
                                 dateLabelStyle: LabelStyle.defaultDateLabelStyle,
                                 nameLabelStyle: LabelStyle.defaultNameLabelStyle)
    }
}


class ToDoItemView: UIView {
    let checkBox:CheckboxView = CheckboxView(frame:CGRect.zero)
    let dateLabel:UILabel = UILabel(frame:CGRect.zero)
    let nameLabel:UILabel = UILabel(frame:CGRect.zero)

    override init(frame:CGRect) {
        super.init(frame: frame)
        //setup layout
        //...
        
        self.apply(style: ToDoItemViewStyle.defaultStyle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

