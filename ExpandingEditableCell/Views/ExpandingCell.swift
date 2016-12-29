//
//  ExpandingCell.swift
//  ExpandingEditableCell
//
//  Created by Pete Smith on 29/12/2016.
//  Copyright © 2016 Pete Smith. All rights reserved.
//

import UIKit

protocol ExpandingCellDelegate {
    func updated(height: CGFloat)
}

class ExpandingCell: UITableViewCell {
    
    var delegate: ExpandingCellDelegate?
    
    @IBOutlet weak var textView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
    
        textView.delegate = self
    }
}

extension ExpandingCell: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        
        let height = textView.newHeight(withBaseHeight: 200)
        delegate?.updated(height: height)
    }
}
