//
//  ViewController.swift
//  Todoey
//
//  Created by Suji Jang on 12/24/24.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destory Demogorgon"]

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    // MARK: - TableView DataSource Methods
    // Section에 있는 행 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    // Cell이 테이블뷰의 특정 위치에 삽입할 수 있도록 데이터 소스를 요청
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableView는 서브클래싱에서부터 얻는 것(메인 테이블뷰에서 IBOutlet을 만든 것과 같다)
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
}
