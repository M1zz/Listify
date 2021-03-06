//
//  ListifyHomeViewController.swift
//  Listify
//
//  Created by 이현호 on 2021/03/06.
//

import UIKit

class ListifyHomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ListifyItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ListifyItemTableViewCell")
    }
    

}

extension ListifyHomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListifyItemTableViewCell", for: indexPath) as! ListifyItemTableViewCell
        cell.set(item: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
}
