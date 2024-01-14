//
//  ViewController.swift
//  HW4.1
//
//  Created by Alisher Sultanov on 13/1/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back"
        label.font = .systemFont(ofSize: 34, weight: .bold)
        label.textColor = UIColor(hex: "#FFFFFF")
        return label
    }()
    
    private let signLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign in to continue"
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .white.withAlphaComponent(0.6)
        return label
    }()
    
    private let tfView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#FFFFFF")
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var idEmaillabel: UILabel = {
        let label = UILabel()
        label.text = "Employee Id / Email"
        label.textColor = UIColor(hex: "#A5A5A5")
        label.font = .systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    private lazy var idEmailTF: UITextField = {
        let textField = UITextField()
        textField.textColor = UIColor(hex: "#323643")
        textField.attributedPlaceholder = NSAttributedString(string: "erp1253@gmail.com", attributes: [NSAttributedString.Key.foregroundColor: UIColor(hex: "#323643")])
        return textField
    }()
    
    private lazy var borderTF: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#E1E3E8")
        return view
    }()
    
    private lazy var passwordlabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = UIColor(hex: "#A5A5A5")
        label.font = .systemFont(ofSize: 12, weight: .regular)
        return label
    }()
    
    private lazy var passwordTF: UITextField = {
        let textField = UITextField()
        textField.textColor = UIColor(hex: "#323643")
        textField.attributedPlaceholder = NSAttributedString(string: "1234656789", attributes: [NSAttributedString.Key.foregroundColor: UIColor(hex: "#323643")])
        return textField
    }()
    
    private lazy var borderTF2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#E1E3E8")
        return view
    }()
    
    private lazy var vectorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "vector"), for: .normal)
        button.tintColor = UIColor(hex: "#CCCCCC")
        return button
    }()
    
    private lazy var ForgotButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = UIColor(hex: "##4B94EA")
        button.setTitle("Forgot Password?", for: .normal)
        return button
    }()
    
    private lazy var checkButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "square"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        button.tintColor = UIColor(hex: "#000000") // Установите цвет изображения
        button.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
        return button
    }()
    
    public lazy var rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = UIColor(hex: "#000000")
        return label
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor(hex: "#FFFFFF"), for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(hex: "#2855AE")
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = UIColor(hex: "#047494B0, #4AC6E9")
        
        setupImage()
        setupWelcomeLabel()
        setupSignLabel()
        setupView()
        setupView()
        setupIdEmailLabel()
        setupTF()
        setupBorderTF()
        setupPasswordLabel()
        setupPasswordTF()
        setupBorderTF2()
        setupVectorBN()
        setupForgotBTN()
        setupCheckBTN()
        setupRememberLBL()
        setupSigInBTN()
    }
    
    private func setupImage() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(50)
            make.leading.equalToSuperview().offset(10)
            make.width.equalTo(350)
            make.height.equalTo(256)
        }
    }
    
    private func setupWelcomeLabel() {
        view.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(0)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-119)
            make.height.equalTo(48)
        }
    }
    
    private func setupSignLabel() {
        view.addSubview(signLabel)
        signLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(0)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-119)
            make.height.equalTo(25)
        }
    }
    
    private func setupView() {
        view.addSubview(tfView)
        tfView.snp.makeConstraints { make in
            make.top.equalTo(signLabel.snp.bottom).offset(8)
            make.horizontalEdges.equalToSuperview().offset(0)
            make.bottom.equalToSuperview()
        }
    }
    
    private func setupIdEmailLabel() {
        tfView.addSubview(idEmaillabel)
        idEmaillabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(43)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-144)
            make.height.equalTo(15)
        }
    }
    
    private func setupTF() {
        tfView.addSubview(idEmailTF)
        idEmailTF.snp.makeConstraints { make in
            make.top.equalTo(idEmaillabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(24)
        }
    }
    
    private func setupBorderTF() {
        tfView.addSubview(borderTF)
        borderTF.snp.makeConstraints { make in
            make.top.equalTo(idEmailTF.snp.bottom).offset(10)
            make.horizontalEdges.equalTo(idEmailTF)
            make.height.equalTo(1)
        }
    }
    
    private func setupPasswordLabel() {
        tfView.addSubview(passwordlabel)
        passwordlabel.snp.makeConstraints { make in
            make.top.equalTo(borderTF.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(23)
            make.trailing.equalToSuperview().offset(-283)
            make.height.equalTo(15)
        }
    }
    
    private func setupPasswordTF() {
        tfView.addSubview(passwordTF)
        passwordTF.snp.makeConstraints { make in
            make.top.equalTo(passwordlabel.snp.bottom).offset(13)
            make.horizontalEdges.equalToSuperview().inset(23)
            make.height.equalTo(24)
        }
    }
    
    private func setupBorderTF2() {
        tfView.addSubview(borderTF2)
        borderTF2.snp.makeConstraints { make in
            make.top.equalTo(passwordTF.snp.bottom).offset(10)
            make.horizontalEdges.equalTo(passwordTF)
            make.height.equalTo(1)
        }
    }
    
    private func setupVectorBN() {
        tfView.addSubview(vectorButton)
        vectorButton.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTF.snp.centerY)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(13)
            make.width.equalTo(18)
        }
    }
    
    private func setupForgotBTN() {
        tfView.addSubview(ForgotButton)
        ForgotButton.snp.makeConstraints { make in
            make.top.equalTo(borderTF2.snp.bottom).offset(3)
            make.trailing.equalToSuperview().offset(-22)
            make.leading.equalToSuperview().offset(233)
            make.height.equalTo(20)
        }
    }
    
    private func setupCheckBTN() {
        tfView.addSubview(checkButton)
        checkButton.snp.makeConstraints { make in
            make.top.equalTo(borderTF2.snp.bottom).offset(41)
            make.leading.equalToSuperview().offset(24)
            make.height.equalTo(24)
        }
    }
    
    @objc func checkboxTapped() {
        checkButton.isSelected = !checkButton.isSelected
    }
    
    private func setupRememberLBL() {
        tfView.addSubview(rememberLabel)
        rememberLabel.snp.makeConstraints { make in
            make.top.equalTo(borderTF2.snp.bottom).offset(41)
            make.leading.equalTo(checkButton.snp.trailing).offset(15)
            make.height.equalTo(24)
        }
    }
    
    private func setupSigInBTN() {
        tfView.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(rememberLabel.snp.bottom).offset(35)
            make.horizontalEdges.equalToSuperview().inset(96)
            make.height.equalTo(40)
        }
        
        signInButton.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
    }
    
    @objc func showNextPage(_ sender: UIButton) {
        guard let idText = idEmailTF.text, let passwordText = passwordTF.text else { return }
        
        if idText.count < 4 {
            idEmailTF.layer.borderColor = UIColor.red.cgColor
            idEmailTF.layer.borderWidth = 1.0
            idEmailTF.layer.cornerRadius = 5.0
            idEmailTF.placeholder = "Пожалуйста, заполните поле!"
        } else if passwordText.count < 4 {
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderWidth = 1.0
            passwordTF.layer.cornerRadius = 5.0
            passwordTF.placeholder = "Пожалуйста, заполните поле!"
        } else {
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
