//
//  ListifyItemTableViewCell.swift
//  Listify
//
//  Created by 이현호 on 2021/03/06.
//

import UIKit

class ListifyItemTableViewCell: UITableViewCell {

    let cellIdentifier: String = "ListifyItemTableViewCell"
    
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var listImageView: UIImageView!
    @IBOutlet weak var listTitleLabel: UILabel!
    @IBOutlet weak var listAuthorLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .systemBackground
        listTitleLabel?.textColor = .label
    }

    
    func set(item: ListifyItem?, index: Int) {
        rankingLabel.text = String(index + 1)
        listImageView.image = UIImage(named: item?.imageUrl ?? "")
        listTitleLabel.text = item?.title
        listAuthorLabel.text = item?.author
    }
}
