//
//  ViewController.swift
//  TableViewAdvance
//
//  Created by Moon Dev on 22/04/2024.
//

import UIKit

struct DataMock {
    let name: String = "Nguyễn Văn Tuấn"
    let dateOfBirth: String = "08/08/2002"
    let sex: String = "Boy"
    let addressOfBirth: String = "Vĩnh Phúc"
    let nation: String = "Kinh"
    let religion: String = "Không"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewA: UITableView!
    @IBOutlet weak var tableViewB: UITableView!
    var listDataA = [TableViewA]()
    let dataMock = DataMock()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        listDataA = [TableViewA(index: 1,
                                listCell: [CellModel(title: "Title 1.1", content: dataMock.name)]),
                     TableViewA(index: 2,
                                listCell: [CellModel(title: "Title 3.1", content: dataMock.dateOfBirth),
                                           CellModel(title: "Title 3.2", content: dataMock.sex)]),
                     TableViewA(index: 3,
                                listCell: [CellModel(title: "Title 2.1", content: dataMock.addressOfBirth)]),
                     TableViewA(index: 4,
                                listCell: [CellModel(title: "Title 4.1", content: dataMock.religion)]),
        ]
    }
    
    
    private func setUI() {
        setUpTableView()
    }
    
    private func setUpTableView() {
        tableViewA.delegate = self
        tableViewA.dataSource = self
        tableViewA.register(UINib(nibName: "OneCellTableViewCell", bundle: nil), forCellReuseIdentifier: "OneCellTableViewCell")
        tableViewA.register(UINib(nibName: "TwoCellTableViewCell", bundle: nil), forCellReuseIdentifier: "TwoCellTableViewCell")
        
        
        tableViewB.dataSource = self
        tableViewB.delegate = self
        tableViewB.register(UINib(nibName: "OneCellTableViewCell", bundle: nil), forCellReuseIdentifier: "OneCellTableViewCell")
        tableViewB.register(UINib(nibName: "TwoCellTableViewCell", bundle: nil), forCellReuseIdentifier: "TwoCellTableViewCell")
    }
    
}

extension ViewController: UITableViewDelegate {
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableViewA {
            return listDataA.count
        } else {
            return 20
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableViewA {
            let data = listDataA[indexPath.row]
            if data.listCell.count > 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TwoCellTableViewCell", for: indexPath) as! TwoCellTableViewCell
                cell.bindData(leftCell: data.listCell.first!, rightCell: data.listCell.last!)
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "OneCellTableViewCell", for: indexPath) as! OneCellTableViewCell
                cell.bindData(cell: data.listCell.first!)
                return cell
            }
        } else {
            if indexPath.row == 1 || indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TwoCellTableViewCell", for: indexPath)
                
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "OneCellTableViewCell", for: indexPath)
                return cell
            }
        }
    }
}
