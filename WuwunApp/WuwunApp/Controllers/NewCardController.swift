//
//  NewCard.swift
//  WuwunApp
//
//  Created by Default on 14.04.24.
//

import UIKit

class NewCardController: UIViewController {
    
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
    
    let titleLabel: UILabel = {
        let ti = UILabel()
        ti.translatesAutoresizingMaskIntoConstraints = false
        return ti
    }()
    
    let descriptionLabel: UILabel = {
        let ti = UILabel()
        ti.translatesAutoresizingMaskIntoConstraints = false
        return ti
    }()
    
    let textBoxForName: UITextField = {
        let tx = UITextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        return tx
    }()
    
    let textBoxForDescription: UITextField = {
        let tx = UITextField()
        tx.translatesAutoresizingMaskIntoConstraints = false
        return tx
    }()
    
    let labelForIcon: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let stackForIcon: UIStackView = {
        let st = UIStackView()
        st.translatesAutoresizingMaskIntoConstraints = false
        return st
    }()
    
    let icon1: UIImageView = {
        let ic = UIImageView()
        ic.translatesAutoresizingMaskIntoConstraints = false
        return ic
    }()
    
    let icon2: UIImageView = {
        let ic = UIImageView()
        ic.translatesAutoresizingMaskIntoConstraints = false
        ic.image = UIImage(named: "Icon2")
        return ic
    }()
    
    let icon3: UIImageView = {
        let ic = UIImageView()
        ic.translatesAutoresizingMaskIntoConstraints = false
        ic.image = UIImage(named: "Icon3")
        return ic
    }()
    
    let icon4: UIImageView = {
        let ic = UIImageView()
        ic.translatesAutoresizingMaskIntoConstraints = false
        ic.image = UIImage(named: "Icon4")
        return ic
    }()
    
    let buttonSubmit: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    let buttonback: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackgroundImage()
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
    
    
    func loadBackgroundImage() {
        self.view.addSubview(viewMain)
        constraintForViewMain()
        viewMain.addSubview(backgroundImageView)
        constraintForbackgroundImageView()
        backgroundImageView.addSubview(titleLabel)
        constraintForTitleLabel()
        backgroundImageView.addSubview(descriptionLabel)
        constraintForDescriptionLabel()
        backgroundImageView.addSubview(textBoxForName)
        constraintForTextBoxForName()
        backgroundImageView.addSubview(textBoxForDescription)
        constraintForTextBoxForDescription()
        backgroundImageView.addSubview(labelForIcon)
        constraintForlabelForIcon()
        backgroundImageView.addSubview(stackForIcon)
        constraintForstackForIcon()
        loadIcons()
        backgroundImageView.addSubview(buttonSubmit)
        constraintForButtonSubmit()
        backgroundImageView.addSubview(buttonback)
        constraintForBottonBack()
    }
    
    func constraintForBottonBack() {
        buttonback.widthAnchor.constraint(equalToConstant: 55).isActive = true
        buttonback.heightAnchor.constraint(equalToConstant: 30).isActive = true
        buttonback.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        buttonback.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        buttonback.layer.cornerRadius = 5
        buttonback.backgroundColor = UIColor.green
        buttonback.setTitle("Back", for: .normal)
        buttonback.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        buttonback.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        buttonback.contentHorizontalAlignment = .center
        buttonback.contentVerticalAlignment = .center
        buttonback.isUserInteractionEnabled = true
        buttonback.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func backButtonTapped() {
        let newViewController = MainController()
        let navController = UINavigationController(rootViewController: newViewController)
         UIApplication.shared.windows.first?.rootViewController = navController
         UIApplication.shared.windows.first?.makeKeyAndVisible()
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
    
    func constraintForTitleLabel() {
        titleLabel.widthAnchor.constraint(equalToConstant: 160).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 91).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 43).isActive = true
        titleLabel.text = "სათაური"
        titleLabel.font = UIFont(name: "FiraGO", size: 14)
        titleLabel.textColor = UIColor.white
    }
    
    func constraintForDescriptionLabel() {
        descriptionLabel.widthAnchor.constraint(equalToConstant: 160).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 174).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 43).isActive = true
        descriptionLabel.text = "აღწერა"
        descriptionLabel.font = UIFont(name: "FiraGO", size: 14)
        descriptionLabel.textColor = UIColor.white
    }
    
    func constraintForTextBoxForName() {
        textBoxForName.widthAnchor.constraint(equalToConstant: 310).isActive = true
        textBoxForName.heightAnchor.constraint(equalToConstant: 45).isActive = true
        textBoxForName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 118).isActive = true
        textBoxForName.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 33).isActive = true
        textBoxForName.layer.cornerRadius = 9
        textBoxForName.layer.borderWidth = 1.0
        textBoxForName.layer.borderColor = UIColor.gray.cgColor
        textBoxForName.placeholder = "მაგ: პანიკა, დახმარება მჭირდება"
        textBoxForName.isUserInteractionEnabled = true
        textBoxForName.textColor = UIColor.white
    }
    
    func constraintForTextBoxForDescription() {
        textBoxForDescription.widthAnchor.constraint(equalToConstant: 310).isActive = true
        textBoxForDescription.heightAnchor.constraint(equalToConstant: 45).isActive = true
        textBoxForDescription.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 201).isActive = true
        textBoxForDescription.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 33).isActive = true
        textBoxForDescription.layer.cornerRadius = 9
        textBoxForDescription.layer.borderWidth = 1.0
        textBoxForDescription.layer.borderColor = UIColor.gray.cgColor
        textBoxForDescription.placeholder = "მაგ: ფიგმამ გამიჭედა და ვინმემ გამომიგზავნეთ"
        textBoxForDescription.isUserInteractionEnabled = true
        textBoxForDescription.textColor = UIColor.white
    }
    
    func constraintForlabelForIcon() {
        labelForIcon.widthAnchor.constraint(equalToConstant: 200).isActive = true
        labelForIcon.heightAnchor.constraint(equalToConstant: 24).isActive = true
        labelForIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 275).isActive = true
        labelForIcon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 43).isActive = true
        labelForIcon.text = "აირჩიეთ აიქონი"
        labelForIcon.font = UIFont(name: "FiraGO", size: 14)
        labelForIcon.textColor = UIColor.white
    }
    
    func constraintForstackForIcon() {
        stackForIcon.widthAnchor.constraint(equalToConstant: 300).isActive = true
        stackForIcon.heightAnchor.constraint(equalToConstant: 45).isActive = true
        stackForIcon.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 313).isActive = true
        stackForIcon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 45).isActive = true
        stackForIcon.axis = .horizontal
        stackForIcon.spacing = 10
    }
    
    func loadIcons() {
        stackForIcon.addArrangedSubview(icon1)
        constraintForIcon1()
        stackForIcon.addArrangedSubview(icon2)
        constraintForIcon2()
        stackForIcon.addArrangedSubview(icon3)
        constraintForIcon3()
        stackForIcon.addArrangedSubview(icon4)
        constraintForIcon4()
    }
    
       @objc func iconTapped(_ sender: UITapGestureRecognizer) {
           guard let tappedIcon = sender.view as? UIImageView else { return }
           guard let iconImage = tappedIcon.image else { return }
           if users.isEmpty {
               users.append(UserChoose(name: "---", description: "---" , icon:  iconImage, id: 1))
           }
           else {
               let maxId = users.map { $0.id }.max() ?? 0
               let newId = maxId + 1
               users.append(UserChoose(name: "---", description: "---", icon: iconImage, id: newId))
           }
           print("\(iconImage) added to selected icons")
       }
    
    func constraintForIcon1() {
        icon1.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        icon1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 313).isActive = true
        icon1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 62).isActive = true
        icon1.layer.cornerRadius = 12
        icon1.image = UIImage(named: "Icon1")
        icon1.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iconTapped(_:)))
        icon1.addGestureRecognizer(tapGesture)
      
    }
    
    func constraintForIcon2() {
        icon2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        icon2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 313).isActive = true
        icon2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 129).isActive = true
        icon2.layer.cornerRadius = 12
        icon2.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iconTapped(_:)))
        icon2.addGestureRecognizer(tapGesture)
    }
    
    func constraintForIcon3() {
        icon3.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        icon3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 313).isActive = true
        icon3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 196).isActive = true
        icon3.layer.cornerRadius = 12
        icon3.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iconTapped(_:)))
        icon3.addGestureRecognizer(tapGesture)

    }
    
    func constraintForIcon4() {
        icon4.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        icon4.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 313).isActive = true
        icon4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 270).isActive = true
        icon4.layer.cornerRadius = 12
        icon4.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(iconTapped(_:)))
        icon4.addGestureRecognizer(tapGesture)
    }
    
    func constraintForButtonSubmit() {
        buttonSubmit.widthAnchor.constraint(equalToConstant: 132).isActive = true
        buttonSubmit.heightAnchor.constraint(equalToConstant: 48).isActive = true
        buttonSubmit.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600).isActive = true
        buttonSubmit.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 121).isActive = true
        buttonSubmit.layer.cornerRadius = 10
        buttonSubmit.backgroundColor = UIColor.green
        buttonSubmit.setTitle("დამატება", for: .normal)
        buttonSubmit.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        buttonSubmit.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        buttonSubmit.contentHorizontalAlignment = .center
        buttonSubmit.contentVerticalAlignment = .center
        buttonSubmit.isUserInteractionEnabled = true
        buttonSubmit.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
    }
    
       @objc func submitButtonTapped() {
           let name = textBoxForName.text ?? ""
           let description = textBoxForDescription.text ?? ""
           let maxId = users.count - 1
           users[maxId].description = description
           users[maxId].name = name
       }
    
}
