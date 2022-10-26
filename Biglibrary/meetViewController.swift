//
//  meetViewController.swift
//  Biglibrary
//
//  Created by Aleksandr Luchinin on 25.10.2022.
//

import UIKit

final class meetViewController: UIViewController {

    
   var myBotton = UIButton()
    var myImageView = UIImageView()
    let libraryImage = UIImage(named: "library")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//         Кнопка вход
        myBotton = UIButton(type: .roundedRect)
        myBotton.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
        myBotton.backgroundColor = .blue
        myBotton.setTitle("Вход", for: .normal)
        myBotton.setTitle("Ok", for: .highlighted)
        myBotton.layer.cornerRadius = 8
        myBotton.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
        myBotton.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        self.view.addSubview(myBotton)
        
//        Картинка Библиотека
        myImageView = UIImageView(frame: CGRect(x: 78, y: 10, width: 150, height: 150))
        myImageView.clipsToBounds = true
        myImageView.image = libraryImage
        view.addSubview(myImageView)
        
        
    }
//    Создаю 2 метода, когда кнопка нажата и когда кнопку уже нажали
    @objc func buttonIsPressed(sender: UIButton) {
        
    }
   
    @objc func buttonIsTapped(sender: UIButton) {
        
    }
}
