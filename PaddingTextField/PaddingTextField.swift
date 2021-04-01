//
//  PaddingTextField.swift
//  PaddingTextField
//
//  Created by 鶴本賢太朗 on 2021/04/01.
//

import UIKit

class PaddingTextField: UITextField {
    private let edgeInsets: UIEdgeInsets
    
    init(edgeInsets: UIEdgeInsets) {
        self.edgeInsets = edgeInsets
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: edgeInsets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: edgeInsets)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: edgeInsets)
    }
}
