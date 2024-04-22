//
//  TitleCell.swift
//  TableViewAdvance
//
//  Created by Moon Dev on 22/04/2024.
//

import Foundation

struct TableViewA {
    let index: Int
    let listCell: [CellModel]
    
    init(index: Int, listCell: [CellModel]) {
        self.index = index
        self.listCell = listCell
    }
}

//
//enum TableViewA {
//    case index1([CellModel])
//    case index2([CellModel])
//
////    static let index1Array: [CellModel] = [
////        CellModel(title: "name", content: "Content1")
////    ]
////
////    static let index2Array: [CellModel] = [
////        CellModel(title: "Title 2.1", content: "Content2.1"),
////        CellModel(title: "Title 1", content: "Content1")
////    ]
//
//    init?(index: Int, [CellModel]){
////        switch index {
////        case 1:
////            self = .index1(TableViewA.index1Array)
////        case 2:
////            self = .index2(TableViewA.index2Array)
////        default:
////            return nil
////        }
//
//
//    }
//}
