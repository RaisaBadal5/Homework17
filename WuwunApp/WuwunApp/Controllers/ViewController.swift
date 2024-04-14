//
//  ViewController.swift
//  WuwunApp
//
//  Created by Default on 14.04.24.
//

import UIKit

class ViewController: UIViewController {

    let splashImageView: UIImageView = {
        let sp = UIImageView()
        sp.translatesAutoresizingMaskIntoConstraints = false
        return sp
    }()
    
    let mainTextLabel: UILabel = {
        let mn = UILabel()
        mn.translatesAutoresizingMaskIntoConstraints = false
        return mn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundLoadForSplash()
    }

    func constraintForSplashImageView() {
        splashImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        splashImageView.heightAnchor.constraint(equalToConstant: 812).isActive = true
        splashImageView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        splashImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        splashImageView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        splashImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        splashImageView.image = UIImage(named: "SplashPhoto")
        
    }
    func backgroundLoadForSplash() {
        self.view.addSubview(splashImageView)
        constraintForSplashImageView()
        splashImageView.addSubview(mainTextLabel)
        constraintFormainTextLabel()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.showMainInterface()
               }
    }
       
    private func showMainInterface() {
           let vc = SecondPageViewController()
           let navController = UINavigationController(rootViewController: vc)
        guard let window = UIApplication.shared.windows.first else {
               fatalError("No windows available")
           }
        window.rootViewController = navController
            window.makeKeyAndVisible()
       }
    
    func constraintFormainTextLabel() {
        mainTextLabel.widthAnchor.constraint(equalToConstant: 171).isActive = true
        mainTextLabel.heightAnchor.constraint(equalToConstant: 48).isActive = true
        mainTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 220).isActive = true
        mainTextLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 102).isActive = true
        mainTextLabel.text = "წუწუნი Hub"
        mainTextLabel.font = UIFont(name: "FiraGO", size: 30)
        mainTextLabel.textColor = UIColor.white
        mainTextLabel.textAlignment = .center
        
    }
    

}

