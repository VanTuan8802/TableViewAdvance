//
//  OneCellTableViewCell.swift
//  TableViewAdvance
//
//  Created by Moon Dev on 22/04/2024.
//

import UIKit

class OneCellTableViewCell: UITableViewCell {

    @IBOutlet weak var labelLb: UILabel!
    @IBOutlet weak var contentTxt: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(cell: CellModel) {
        labelLb.text = cell.title
        contentTxt.text = cell.content

    }
}
