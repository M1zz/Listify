//
//  ListifyHomeViewController.swift
//  Listify
//
//  Created by 이현호 on 2021/03/06.
//

import UIKit

class ListifyHomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dummyData: [ListifyItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchDummuData()
        configureTableView()
        
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemBackground
        tableView.register(UINib(nibName: "ListifyItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ListifyItemTableViewCell")
    }

    private func fetchDummuData() {
        dummyData.append(ListifyItem(imageUrl: "dummy1", title: "로파이, 커피 한 잔의 여유", author: "essential", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy2", title: "빡센 힙합은 싫은데, 적당한 둠칫한 노래", author: "눈에띠네", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy3", title: "듣기만 해도 내 기분 캘리포니아", author: "바이올렛 피즈 Violet fizz", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy4", title: "카페파니니 재생목록 : 어쿠스틱 팝송, 재즈.", author: "카페파니니", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy5", title: "미리 듣는 두근두근 봄 캐롤", author: "루프탑뮤직 Rooftop Music", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy6", title: "감성인디,흐르는듯 전해지는음악", author: "Music Love", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy7", title: "집중할때 듣기 좋은 편안한 Lo-Fi 재즈", author: "Music Love", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy8", title: "lofi hip hop radio", author: "ChilledCow", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy9", title: "같이해요, 로파이 노동요", author: "KozyPop", isLiked: false))
        dummyData.append(ListifyItem(imageUrl: "dummy10", title: "굿모닝~ 아침길 기분 UP! 하게 만드는 POP", author: "essential", isLiked: false))
        
    }
}

extension ListifyHomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListifyItemTableViewCell", for: indexPath) as! ListifyItemTableViewCell
        cell.set(item: dummyData[indexPath.row], index: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
