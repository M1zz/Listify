//
//  ViewController.swift
//  Listify
//
//  Created by 이현호 on 2021/02/18.
//

import UIKit

class ViewController: UITabBarController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // 3
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
          
        // 4
        let image = UIImage(named: "logo")
        imageView.image = image
          
        // 5
        navigationItem.titleView = imageView
    }


}

