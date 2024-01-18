//
//  FourthViewController.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 18/1/24.
//

import UIKit
import SnapKit

class FourthViewController: UIViewController {
    
    
    private lazy var image = MakerView.shared.makerImageView(image: UIImage(named: "vector2"))
    
    private lazy var smsTfView = MakerView.shared.makerView(backgroundColor: UIColor.gray)
    
    private lazy var smsTF = MakerView.shared.makerTF(placeholder: "erp001", textColor: UIColor.white)
    
    private lazy var tfView = MakerView.shared.makerView()
    
    private lazy var newPasswordLabel = MakerView.shared.makerLabel(text: "New Password")
    
    private lazy var newPassTf = MakerView.shared.makerTF(placeholder: "1234656789")
    
    private lazy var borderView = MakerView.shared.makerBorder()
    
    private lazy var confPassLabel = MakerView.shared.makerLabel(text: "Confirm Password")
    
    private lazy var confPassTf = MakerView.shared.makerTF(placeholder: "1234656789")
    
    private lazy var borderView2 = MakerView.shared.makerBorder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#047494B0, #4AC6E9")
        
        setupImage()
        setupSmsTfView()
        setupSmsTf()
        setupTfView()
        setupNewPassLabel()
        setupNewPassTf()
        //setupConfPassLabel()
//        setupConfPassTf()
//        setupBrdView2()
    }
    private func setupBrdView2() {
        tfView.addSubview(borderView2)
        borderView2.snp.makeConstraints { make in
            make.top.equalTo(confPassTf.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(1)
        }
    }
    private func setupConfPassTf() {
        tfView.addSubview(confPassTf)
        confPassTf.snp.makeConstraints { make in
            make.top.equalTo(confPassLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(23)
            make.trailing.equalTo(tfView.snp.trailing).offset(-224)
            make.height.equalTo(20)
        }
    }
    
    private func setupConfPassLabel() {
        tfView.addSubview(confPassLabel)
        confPassLabel.snp.makeConstraints { make in
            make.top.equalTo(borderView.snp.bottom).offset(25)
            make.leading.equalTo(tfView.snp.leading).offset(23)
            make.trailing.equalTo(tfView.snp.trailing).offset(213)
            make.height.equalTo(15)
        }
    }
    private func setupBrdView() {
        tfView.addSubview(borderView)
        borderView.snp.makeConstraints { make in
            make.top.equalTo(newPassTf.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(1)
        }
    }
    private func setupNewPassTf() {
        tfView.addSubview(newPassTf)
        newPassTf.snp.makeConstraints { make in
            make.top.equalTo(newPasswordLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(23)
            make.trailing.equalTo(tfView.snp.trailing).offset(-224)
            make.height.equalTo(20)
        }
    }
    
    private func setupNewPassLabel() {
        tfView.addSubview(newPasswordLabel)
        newPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(tfView.snp.top).offset(120)
            make.leading.equalTo(tfView.snp.leading).offset(23)
            make.trailing.equalTo(tfView.snp.trailing).offset(-213)
            make.height.equalTo(15)
        }
    }
    private func setupTfView() {
        view.addSubview(tfView)
        tfView.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(466)
            
        }
    }
    private func setupSmsTf() {
        smsTfView.addSubview(smsTF)
        smsTF.snp.makeConstraints { make in
            make.centerY.equalTo(smsTfView.snp.centerY)
            make.leading.equalTo(smsTfView.snp.leading).offset(15)
            make.trailing.equalTo(smsTfView.snp.trailing).offset(56)
        }
    }
    
    private func setupSmsTfView() {
        view.addSubview(smsTfView)
        smsTfView.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(34)
            make.horizontalEdges.equalToSuperview().inset(42)
            make.height.equalTo(45)
        }
    }
    private func setupImage() {
        view.addSubview(image)
        image.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(84)
            make.horizontalEdges.equalToSuperview().inset(106)
            make.height.width.equalTo(180)
        }
    }
}
