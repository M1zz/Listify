//
//  AddPlayListViewController.swift
//  Listify
//
//  Created by 이현호 on 2021/03/30.
//

import UIKit

class AddPlayListViewController: UIViewController {

    @IBOutlet weak var youtubeListUploadView: UIView!
    @IBOutlet weak var urlListUploadView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubeListUploadView.layer.cornerRadius = 10
        youtubeListUploadView.layer.borderWidth = 2
        youtubeListUploadView.layer.borderColor = UIColor.systemGray.cgColor
        
        urlListUploadView.layer.cornerRadius = 10
        urlListUploadView.layer.borderWidth = 2
        urlListUploadView.layer.borderColor = UIColor.systemGray.cgColor
    }
}
