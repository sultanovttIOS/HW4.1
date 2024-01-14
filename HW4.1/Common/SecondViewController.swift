//
//  SecondViewController.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 14/1/24.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {

    private lazy var kissImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "kiss")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var kissVerticalImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "kissVertical")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var ellipseImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ellipse")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var checkMarkImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "checkMark")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private lazy var successLabel: UILabel = {
        let label = UILabel()
        label.text = "Success!"
        label.textColor = UIColor(hex: "#FFFFFF")
        label.font = .systemFont(ofSize: 30, weight: .semibold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#047494B0, #4AC6E9")

        setupKissImage()
        setupEllipseImage()
        setupCheckMarkImage()
        setupKissVerticalImage()
        setupSuccessLBL()
    }
    
    private func setupKissImage() {
        view.addSubview(kissImage)
        kissImage.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
    
    private func setupKissVerticalImage() {
        view.addSubview(kissVerticalImage)
        kissVerticalImage.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
    
    private func setupEllipseImage() {
        kissImage.addSubview(ellipseImage)
        ellipseImage.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
    
    private func setupCheckMarkImage() {
        ellipseImage.addSubview(checkMarkImage)
        checkMarkImage.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.centerX.equalTo(view.snp.centerX)
        }
    }
    
    private func setupSuccessLBL() {
        view.addSubview(successLabel)
        successLabel.snp.makeConstraints { make in
            make.top.equalTo(kissImage.snp.bottom).offset(10)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(30)
        }
    }
}
