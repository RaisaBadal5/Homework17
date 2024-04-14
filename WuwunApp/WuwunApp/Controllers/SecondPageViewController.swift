//
//  SecondPageControllerViewController.swift
//  WuwunApp
//
//  Created by Default on 14.04.24.
//

import UIKit

class SecondPageViewController: UIViewController {

    let backgroundImage: UIImageView = {
           let sp = UIImageView()
           sp.translatesAutoresizingMaskIntoConstraints = false
           return sp
       }()
    
    
    let mainTextLabel: UITextView = {
          let mn = UITextView()
          mn.translatesAutoresizingMaskIntoConstraints = false
          return mn
      }()
    
    let button: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundbackgroundImage()
    }
    
    func constraintForbackgroundImage() {
        backgroundImage.widthAnchor.constraint(equalToConstant: 375).isActive = true
        backgroundImage.heightAnchor.constraint(equalToConstant: 812).isActive = true
        backgroundImage.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        backgroundImage.image = UIImage(named: "Image2")
        backgroundImage.isUserInteractionEnabled = true
        
    }
    func backgroundbackgroundImage() {
        self.view.addSubview(backgroundImage)
        constraintForbackgroundImage()
        backgroundImage.addSubview(mainTextLabel)
        constraintFormainTextLabel()
        backgroundImage.addSubview(button)
        constraintForButton()
        
    }
    func constraintFormainTextLabel() {
           mainTextLabel.widthAnchor.constraint(equalToConstant: 263).isActive = true
           mainTextLabel.heightAnchor.constraint(equalToConstant: 192).isActive = true
           mainTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 382).isActive = true
           mainTextLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 21).isActive = true
           mainTextLabel.text = "შედი აპლიკაციაში და იწუწუნე რამდენიც გინდა"
           mainTextLabel.font = UIFont(name: "FiraGO", size: 30)
           mainTextLabel.textColor = UIColor.white
           mainTextLabel.textAlignment = .left
           mainTextLabel.backgroundColor = .none
       }
   

    func constraintForButton() {
        button.widthAnchor.constraint(equalToConstant: 123).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600).isActive = true
        button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 222).isActive = true
        button.layer.cornerRadius = 13
        button.backgroundColor = UIColor(named: "Color1")
        button.setTitle("დაწყება", for: .normal)
        button.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.isUserInteractionEnabled = true
        button.addTarget(self, action: #selector(buttonFunc), for: .touchUpInside)
    }
    @objc func buttonFunc() {
        let newViewController = MainController()
        let navController = UINavigationController(rootViewController: newViewController)
         UIApplication.shared.windows.first?.rootViewController = navController
         UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}
