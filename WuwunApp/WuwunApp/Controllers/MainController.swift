//
//  MainController.swift
//  WuwunApp
//
//  Created by Default on 14.04.24.
//

import UIKit

class MainController: UIViewController {

    let viewMain: UIView = {
        let vm = UIView()
        vm.translatesAutoresizingMaskIntoConstraints = false
        return vm
    }()
    
    let backgroundImageView: UIImageView = {
        let sp = UIImageView()
        sp.translatesAutoresizingMaskIntoConstraints = false
        return sp
    }()
    
    let buttonAdd: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    let collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            cv.translatesAutoresizingMaskIntoConstraints = false
            return cv
        }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(viewMain)
        constraintForViewMain()
        viewMain.addSubview(backgroundImageView)
        constraintForbackgroundImageView()
        viewMain.addSubview(buttonAdd)
        constraintForButtonAdd()
        backgroundImageView.addSubview(collectionView)
        collectionView.register(UserChooseCell.self, forCellWithReuseIdentifier: "userChooseCell")
        collectionView.delegate = self
        collectionView.dataSource = self
             NSLayoutConstraint.activate([
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20),
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 10),
        collectionView.bottomAnchor.constraint(equalTo: buttonAdd.topAnchor,constant: 50)
             ])
        collectionView.backgroundView = UIImageView(image: backgroundImageView.image)
       
    }
  
    func constraintForbackgroundImageView() {
        backgroundImageView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        backgroundImageView.heightAnchor.constraint(equalToConstant: 812).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "SplashPhoto")
        backgroundImageView.isUserInteractionEnabled = true
        
    }
    
    func constraintForViewMain() {
        viewMain.widthAnchor.constraint(equalToConstant: 375).isActive = true
        viewMain.heightAnchor.constraint(equalToConstant: 812).isActive = true
        viewMain.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        viewMain.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewMain.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        viewMain.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewMain.isUserInteractionEnabled = true
    }
    
    func constraintForButtonAdd() {
        buttonAdd.widthAnchor.constraint(equalToConstant: 290).isActive = true
        buttonAdd.heightAnchor.constraint(equalToConstant: 48).isActive = true
        buttonAdd.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600).isActive = true
        buttonAdd.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 43).isActive = true
        buttonAdd.layer.cornerRadius = 10
        buttonAdd.backgroundColor = UIColor.blue
        buttonAdd.setTitle("ახალი წუწუნ ბარათის დამატება", for: .normal)
        buttonAdd.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        buttonAdd.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        buttonAdd.contentHorizontalAlignment = .center
        buttonAdd.contentVerticalAlignment = .center
        buttonAdd.isUserInteractionEnabled = true
        buttonAdd.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    
       @objc func submitButtonTapped() {
           let newViewController = NewCardController()
           let navController = UINavigationController(rootViewController: newViewController)
            UIApplication.shared.windows.first?.rootViewController = navController
            UIApplication.shared.windows.first?.makeKeyAndVisible()
       }
    
}
extension MainController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return users.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userChooseCell", for: indexPath) as! UserChooseCell
           let user = users[indexPath.item]
           cell.configure(with: user)
           return cell
       }

       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: collectionView.bounds.width, height: 100)
       }
   
}

