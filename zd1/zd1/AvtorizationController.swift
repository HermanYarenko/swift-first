//
//  ViewController.swift
//  zd1
//
//  Created by Герман Яренко on 20.11.23.
//

import UIKit

class AvtorizationController: UIViewController {
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let avtorizationLable : UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "Авторизация"
        lable.textAlignment = .center
        lable.textColor = .black
        lable.font = .systemFont(ofSize: 20)
        return lable
    }()
    private let loginTextField : UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.placeholder = "введите свой логин"
        login.textAlignment = .center
        login.textColor = .black
        login.backgroundColor = .white
        
        return login
    }()
    private let passwordTextField : UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.placeholder = "введите свой пароль"
        login.textAlignment = .center
        login.textColor = .black
        login.backgroundColor = .white
        
        return login
    }()
    
    private let inputButtom : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Войти", for: .normal)
        button.tintColor = .white
        
        
        return button
    }()
    
    func setupConstrain () {
        NSLayoutConstraint.activate([
            // MARK: image
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            imageView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 4),
            
            // MARK: avtorizarion
            avtorizationLable.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            avtorizationLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            avtorizationLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            // MARK: login
            loginTextField.topAnchor.constraint(equalTo: avtorizationLable.bottomAnchor, constant: 20),
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor,constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            inputButtom.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 5),
            inputButtom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            inputButtom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
        ])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(imageView)
        view.addSubview(avtorizationLable)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(inputButtom)
        inputButtom.addTarget(self,
                              action: #selector(didTapButton),
                              for: .touchUpInside)
        setupConstrain()
    }
    @objc func didTapButton(){
        let tabBarVC = MainTabBarController()
        
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present (tabBarVC, animated: true)
    }

}


