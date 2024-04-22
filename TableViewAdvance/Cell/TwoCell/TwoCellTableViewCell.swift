//
//  TwoCellTableViewCell.swift
//  TableViewAdvance
//
//  Created by Moon Dev on 22/04/2024.
//

import UIKit

class TwoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var leftLb: UILabel!
    @IBOutlet weak var leftTxt: UITextField!
    @IBOutlet weak var rightLb: UILabel!
    @IBOutlet weak var rightTxt: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(leftCell: CellModel, rightCell: CellModel) {
        leftLb.text = leftCell.title
        leftTxt.text = leftCell.content
        
        rightLb.text = rightCell.title
        rightTxt.text = rightCell.content
    }
}
