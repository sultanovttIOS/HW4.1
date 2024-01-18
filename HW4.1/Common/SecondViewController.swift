//
//  SecondViewController.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 14/1/24.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    private lazy var tfView = MakerView.shared.makerView()
    
    private lazy var nameLabel = MakerView.shared.makerLabel(text: "Full Name")
    
    private lazy var nameTF = MakerView.shared.makerTF(placeholder: "Mehaat Junit")
    
    private lazy var nameBrdView = MakerView.shared.makerBorder()
    
    private lazy var mobileLabel = MakerView.shared.makerLabel(text: "Mobile Number")
    
    private lazy var mobileTF = MakerView.shared.makerTF(placeholder: "+91 73733 73733")
    
    private lazy var mobileBrdView = MakerView.shared.makerBorder()
    
    private lazy var emailLabel = MakerView.shared.makerLabel(text: "Email")
    
    private lazy var emailTF = MakerView.shared.makerTF(placeholder: "erp1253@gmail.com")
    
    private lazy var emailBrdView = MakerView.shared.makerBorder()
    
    private lazy var userNameLabel = MakerView.shared.makerLabel(text: "User Name")
    
    private lazy var userNameTF = MakerView.shared.makerTF(placeholder: "erp@mrg")
    
    private lazy var userBrdView = MakerView.shared.makerBorder()
    
    private lazy var passwordLabel = MakerView.shared.makerLabel(text: "Password")
    
    private lazy var passwordTF = MakerView.shared.makerTF(placeholder: "1234656789")
    
    private lazy var passVectorButton = MakerView.shared.makerVector(image: UIImage(named: ""))
    
    private lazy var passwordBrdView = MakerView.shared.makerBorder()
    
    private lazy var confPassLabel = MakerView.shared.makerLabel(text: "Confirm Password")
    
    private lazy var confPassTF = MakerView.shared.makerTF(placeholder: "1234656789")
    
    private lazy var confPassBrdView = MakerView.shared.makerBorder()
    
    private lazy var confVectorButton = MakerView.shared.makerVector(image: UIImage(named: ""))
    
    private lazy var signUpButton = MakerView.shared.makerButton(setTitle: "Sign Up", tintColor: UIColor.white, backgroundColor: UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1), cornerRadius: 15, setImage: UIImage(named: ""), borderColor: UIColor.clear)
    
    private lazy var accountLabel = MakerView.shared.makerLabel(text: "Already have an Account?", textColor: UIColor.black, textSize: 13)
    
    private lazy var signInButton = MakerView.shared.makerButton(setTitle: "Sign In", tintColor: UIColor.link, backgroundColor: UIColor.clear, cornerRadius: 0, setImage: UIImage(named: ""), borderColor: UIColor.clear)
    
    private lazy var imageView = MakerView.shared.makerImageView(image: UIImage(named: "1"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#047494B0, #4AC6E9")
        
        setupImageView()
        setupView()
        setupNameLBL()
        setupNameTF()
        setupNameBrdView()
        setupMobileLabel()
        setupMobileTF()
        setupMobileBrdView()
        setupEmailLabel()
        setupEmailTF()
        setupEmailBrdView()
        setupUserNameLabel()
        setupUserNameTF()
        setupUserBrdView()
        setupPasswordLabel()
        setupPasswordTF()
        setupVectorButton()
        setupPasswordBrdView()
        setupConfPassLabel()
        setupConfPassTF()
        setupConfVectorButton()
        setupConfPassBrdView()
        setupSignUpBtn()
        setupAccountLabel()
        setupSignInBtn()
    }
    
    private func setupSignInBtn() {
        tfView.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(26)
            make.leading.equalTo(accountLabel.snp.trailing).offset(2)
            make.height.equalTo(16)
            make.width.equalTo(50)
            make.bottom.equalTo(tfView.snp.bottom).offset(-38)
        }
        
        signInButton.addTarget(self, action: #selector(showRootPage), for: .touchUpInside)
    }
    
    @objc func showRootPage(sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    private func setupAccountLabel() {
        tfView.addSubview(accountLabel)
        accountLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(26)
            make.bottom.equalTo(tfView.snp.bottom).offset(-38)
            make.height.equalTo(16)
            make.leading.equalTo(tfView.snp.leading).offset(12)
        }
    }
    
    private func setupSignUpBtn() {
        tfView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(confPassBrdView.snp.bottom).offset(33)
            make.horizontalEdges.equalToSuperview().inset(96)
            make.height.equalTo(40)
        }
        
        signUpButton.addTarget(self, action: #selector(showSuccessPage), for: .touchUpInside)
    }
    
    @objc func showSuccessPage(sender: UIButton) {
        func check() -> Bool {
            validateTF(tf: nameTF, error: "Please, fill the field!")
            validateTF(tf: mobileTF, error: "Please, fill the field!")
            validateTF(tf: emailTF, error: "Please, fill the field!")
            validateTF(tf: userNameTF, error: "Please, fill the field!")
            validateTF(tf: passwordTF, error: "Please, fill the field!")
            validateTF(tf: confPassTF, error: "Password mismatch!")
            
            if nameTF.text?.count ?? 0 >= 4,
               mobileTF.text?.count ?? 0 >= 4,
               emailTF.text?.count ?? 0 >= 4,
               userNameTF.text?.count ?? 0 >= 4,
               passwordTF.text?.count ?? 0 >= 4,
               confPassTF.text?.count ?? 0 >= 4,
               confPassTF.text == passwordTF.text {
                return true
            } else {
                return false
            }
        }
        
        if check() {
            navigationController?.pushViewController(LastViewController(), animated: true)
        }
    }
    
    private func validateTF(tf: UITextField, error: String, borderColor: UIColor = .red, borderWidth: CGFloat = 1.0, cornerRadius: CGFloat = 5) {
        if tf.text?.count ?? 0 < 4 {
            tf.placeholder = error
            tf.layer.borderColor = borderColor.cgColor
            tf.layer.borderWidth = borderWidth
            tf.layer.cornerRadius = cornerRadius
        } else {
            tf.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    private func setupConfPassBrdView() {
        tfView.addSubview(confPassBrdView)
        confPassBrdView.snp.makeConstraints { make in
            make.top.equalTo(confPassTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    private func setupConfVectorButton() {
        tfView.addSubview(confVectorButton)
        confVectorButton.snp.makeConstraints { make in
            make.centerY.equalTo(confPassTF.snp.centerY)
            make.trailing.equalTo(tfView.snp.trailing).offset(-31)
            make.width.equalTo(18)
            make.height.equalTo(13)
        }
    }
    
    private func setupConfPassTF() {
        tfView.addSubview(confPassTF)
        confPassTF.snp.makeConstraints { make in
            make.top.equalTo(confPassLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    private func setupConfPassLabel() {
        tfView.addSubview(confPassLabel)
        confPassLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordBrdView.snp.bottom).offset(8)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    private func setupPasswordBrdView() {
        tfView.addSubview(passwordBrdView)
        passwordBrdView.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    private func setupVectorButton() {
        tfView.addSubview(passVectorButton)
        passVectorButton.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTF.snp.centerY)
            make.trailing.equalTo(tfView.snp.trailing).offset(-31)
            make.width.equalTo(18)
            make.height.equalTo(13)
        }
    }
    
    private func setupPasswordTF() {
        tfView.addSubview(passwordTF)
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    private func setupPasswordLabel() {
        tfView.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(userBrdView.snp.bottom).offset(8)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    private func setupUserBrdView() {
        tfView.addSubview(userBrdView)
        userBrdView.snp.makeConstraints { make in
            make.top.equalTo(userNameTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    
    private func setupUserNameTF() {
        tfView.addSubview(userNameTF)
        userNameTF.snp.makeConstraints { make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    private func setupUserNameLabel() {
        tfView.addSubview(userNameLabel)
        userNameLabel.snp.makeConstraints { make in
            make.top.equalTo(emailBrdView.snp.bottom).offset(8)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    private func setupEmailBrdView() {
        tfView.addSubview(emailBrdView)
        emailBrdView.snp.makeConstraints { make in
            make.top.equalTo(emailTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    
    private func setupEmailTF() {
        tfView.addSubview(emailTF)
        emailTF.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    private func setupEmailLabel() {
        tfView.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(mobileBrdView.snp.bottom).offset(8)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    private func setupMobileBrdView() {
        tfView.addSubview(mobileBrdView)
        mobileBrdView.snp.makeConstraints { make in
            make.top.equalTo(mobileTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    private func setupMobileTF() {
        tfView.addSubview(mobileTF)
        mobileTF.snp.makeConstraints { make in
            make.top.equalTo(mobileLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    private func setupMobileLabel() {
        tfView.addSubview(mobileLabel)
        mobileLabel.snp.makeConstraints { make in
            make.top.equalTo(nameBrdView.snp.bottom).offset(8)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    private func setupNameBrdView() {
        tfView.addSubview(nameBrdView)
        nameBrdView.snp.makeConstraints { make in
            make.top.equalTo(nameTF.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(22)
            make.height.equalTo(1)
        }
    }
    private func setupNameTF() {
        tfView.addSubview(nameTF)
        nameTF.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(13)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.trailing.equalTo(tfView.snp.trailing).offset(-80)
            make.height.equalTo(20)
        }
    }
    
    private func setupNameLBL() {
        tfView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(tfView.snp.top).offset(40)
            make.leading.equalTo(tfView.snp.leading).offset(22)
            make.height.equalTo(15)
        }
    }
    
    private func setupView() {
        view.addSubview(tfView)
        tfView.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom)
            make.horizontalEdges.equalToSuperview()
            make.height.equalTo(608)
        }
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(-50)
            make.leading.equalTo(32)
            make.trailing.equalTo(view.safeAreaLayoutGuide).offset(0)
        }
    }
}
