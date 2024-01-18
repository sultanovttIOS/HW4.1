//
//  MakerView.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 17/1/24.
//

import UIKit

class MakerView {
    
    static let shared =  MakerView()
    
    func makerImageView(contentMode: UIView.ContentMode = .scaleAspectFill,
                        clipsToBounds: Bool = true,
                        cornerRadius: CGFloat = 12,
                        image: UIImage?) -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = contentMode
        imageView.clipsToBounds = clipsToBounds
        imageView.layer.cornerRadius = cornerRadius
        imageView.image = image ?? UIImage(named: "1")
        return imageView
        
    }
    
    func makerView(borderColor: UIColor = UIColor.gray, backgroundColor: UIColor = .white,
                   cornerRadius: CGFloat = 20, borderWidth: CGFloat = 1) -> UIView {
        let view = UIView()
        view.layer.borderColor = borderColor.cgColor
        view.backgroundColor = backgroundColor
        view.layer.cornerRadius = cornerRadius
        view.layer.borderWidth = borderWidth
        return view
    }
    
    func makerLabel(text: String,
                    textColor: UIColor = .systemGray,
                    textSize: CGFloat = 12,
                    numberOfLines: Int = 0,
                    lineBreakMode: NSLineBreakMode = .byWordWrapping,
                    textAlignment: NSTextAlignment = .left) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = textColor
        label.font = .systemFont(ofSize: textSize)
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.textAlignment = textAlignment
        return label
    }
    
    func makerTF(placeholder: String,
                 textColor: UIColor = .black,
                 keyboardType: UIKeyboardType = .default,
                 leftViewMode: UITextField.ViewMode = .always,
                 cornerRadius: CGFloat = 16) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.textColor = textColor
        textField.keyboardType = keyboardType
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 4))
        textField.leftView = view
        textField.leftViewMode = leftViewMode
        textField.layer.cornerRadius = cornerRadius
        return textField
    }
    
    func makerBorder(backgroundColor: UIColor = .lightGray) -> UIView {
        let view = UIView()
        view.backgroundColor = backgroundColor
        return view
    }
    
    func makerVector(image: UIImage?,
                     forState state: UIControl.State = .normal,
                     tintColor: UIColor = .lightGray) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(image ?? UIImage(named: "vector"), for: state)
        button.tintColor = tintColor
        return button
    }
    
    func makerButton(setTitle: String,
                     for state: UIControl.State = .normal,
                     tintColor: UIColor,
                     backgroundColor: UIColor,
                     cornerRadius: CGFloat,
                     setImage: UIImage? = nil, borderColor: UIColor = UIColor.gray, borderWidth: CGFloat = 1) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(setTitle, for: state)
        button.tintColor = tintColor
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = cornerRadius
        button.layer.borderColor = borderColor.cgColor
        button.layer.borderWidth = borderWidth
        
        if let setImage = setImage {
            button.setImage(setImage, for: state)
        }
        
        return button
    }
    
    func makerStackView(axis: NSLayoutConstraint.Axis = .horizontal, backgroundColor: UIColor = UIColor.clear, spacing: CGFloat = 7, distribution: UIStackView.Distribution = .fillEqually) -> UIStackView {
        let view = UIStackView()
        view.axis = axis
        view.backgroundColor = backgroundColor
        view.spacing = spacing
        view.distribution = distribution
        return view
    }
}
