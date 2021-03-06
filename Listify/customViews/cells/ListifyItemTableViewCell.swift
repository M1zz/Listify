//
//  ListifyItemTableViewCell.swift
//  Listify
//
//  Created by 이현호 on 2021/03/06.
//

import UIKit

class ListifyItemTableViewCell: UITableViewCell {

    let cellIdentifier: String = "ListifyItemTableViewCell"
    
    @IBOutlet weak var listImageView: UIImageView!
    @IBOutlet weak var listTitleLabel: UILabel!
    @IBOutlet weak var listAuthorLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func set(item: ListifyItem?) {
        listImageView.image = UIImage(named: "dummy1")
        listTitleLabel.text = "감성이 넘쳐나는 리스트"
        listAuthorLabel.text = "Leeo"
    }
}
