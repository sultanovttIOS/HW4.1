//
//  ThirdViewController.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 18/1/24.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
    private lazy var image = MakerView.shared.makerImageView(image: UIImage(named: "vector2"))
    
    private lazy var smsTfView = MakerView.shared.makerView(backgroundColor: UIColor.gray)
    
    private lazy var smsTF = MakerView.shared.makerTF(placeholder: "erp001", textColor: UIColor.white)
    
    private lazy var troubleLabel = MakerView.shared.makerLabel(text: "Trouble Logging in?", textColor: UIColor.white, textSize: 24)
    
    private lazy var otpLabel = MakerView.shared.makerLabel(text: "Enter your email or  mobile number and we'll send you a OTP to get back into your account.", textColor: UIColor.cyan, textSize: 11, numberOfLines: 2, textAlignment: .center)
    
    private lazy var tfView = MakerView.shared.makerView()
    
    private lazy var employeeLabel = MakerView.shared.makerLabel(text: "Employee Id")
    
    private lazy var idTf = MakerView.shared.makerTF(placeholder: "erp001")
    
    private lazy var borderView = MakerView.shared.makerBorder()
    
    private lazy var numberOrEmailView = MakerView.shared.makerView(borderColor: UIColor.gray, backgroundColor: UIColor.white)
    
    private lazy var numberOremailTF = MakerView.shared.makerTF(placeholder: "enter your mobile number or Email  id", textColor: UIColor.black)
    
    private lazy  var getOTPButton = MakerView.shared.makerButton(setTitle: "Get OTP", tintColor: UIColor.white, backgroundColor: UIColor(hex: "#F5D04A"), cornerRadius: 15, setImage: UIImage(named: ""), borderColor: UIColor.clear)
    
    private lazy var stackView = MakerView.shared.makerStackView()
    
    private lazy var button1 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var button2 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var button3 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var button4 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var button5 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var button6 = MakerView.shared.makerButton(setTitle: "", tintColor: UIColor.black, backgroundColor: UIColor.clear, cornerRadius: 10, setImage: UIImage(named: "x"))
    
    private lazy var submitButton = MakerView.shared.makerButton(setTitle: "Submit", tintColor: UIColor.white, backgroundColor: UIColor.systemGreen, cornerRadius: 15)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#047494B0, #4AC6E9")
        
        setupImage()
        setupSmsTfView()
        setupSmsTf()
        setupTroubleLabel()
        setupOtpLabel()
        setupTfView()
        setupIdLabel()
        setupIdTf()
        setupBrdView()
        setupNumOrEmailView()
        setupNumberOrEmailTf()
        setupGetOtp()
        setupStackView()
        setupButtons()
        setupSubmitBtn()
    }
    private func setupSubmitBtn() {
        tfView.addSubview(submitButton)
        submitButton.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(25)
            make.bottom.equalTo(view.snp.bottom).offset(-25)
            make.width.equalTo(95)
            make.centerX.equalTo(stackView.snp.centerX)
        }
    }
    
    private func setupButtons() {
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)
        stackView.addArrangedSubview(button5)
        stackView.addArrangedSubview(button6)
    }
    
    private func setupStackView() {
        tfView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalTo(getOTPButton.snp.bottom).offset(30)
            make.horizontalEdges.equalToSuperview().inset(43)
            make.height.equalTo(40)
        }
    }
    private func setupGetOtp() {
        tfView.addSubview(getOTPButton)
        getOTPButton.snp.makeConstraints { make in
            make.top.equalTo(numberOrEmailView.snp.bottom).offset(16)
            make.width.equalTo(95)
            make.trailing.equalTo(tfView.snp.trailing).offset(-23)
            make.height.equalTo(35)
        }
    }
    private func setupNumberOrEmailTf() {
        numberOrEmailView.addSubview(numberOremailTF)
        numberOremailTF.snp.makeConstraints { make in
            make.centerY.equalTo(numberOrEmailView.snp.centerY)
            make.leading.equalTo(numberOrEmailView.snp.leading).offset(17)
            make.trailing.equalTo(smsTfView.snp.trailing).offset(26)
            
        }
    }
    
    private func setupNumOrEmailView() {
        tfView.addSubview(numberOrEmailView)
        numberOrEmailView.snp.makeConstraints { make in
            make.top.equalTo(borderView.snp.bottom).offset(30)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(45)
        }
    }
    private func setupBrdView() {
        tfView.addSubview(borderView)
        borderView.snp.makeConstraints { make in
            make.top.equalTo(idTf.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    
    private func setupIdTf() {
        tfView.addSubview(idTf)
        idTf.snp.makeConstraints { make in
            make.top.equalTo(employeeLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(67)
            make.height.equalTo(20)
            
        }
    }
    
    private func setupIdLabel() {
        tfView.addSubview(employeeLabel)
        employeeLabel.snp.makeConstraints { make in
            make.top.equalTo(tfView.snp.top).offset(42)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(161)
            make.height.equalTo(15)
            
        }
    }
    private func setupTfView() {
        view.addSubview(tfView)
        tfView.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(385)
            
        }
    }
    private func setupOtpLabel() {
        view.addSubview(otpLabel)
        otpLabel.snp.makeConstraints { make in
            make.top.equalTo(troubleLabel.snp.bottom).offset(15)
            make.centerX.equalTo(troubleLabel.snp.centerX)
            make.width.equalTo(231)
            make.height.equalTo(27)
            
        }
    }
    private func setupTroubleLabel() {
        view.addSubview(troubleLabel)
        troubleLabel.snp.makeConstraints { make in
            make.top.equalTo(smsTfView.snp.bottom).offset(24)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(27)
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
