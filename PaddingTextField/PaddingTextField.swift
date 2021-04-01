//
//  PaddingTextField.swift
//  PaddingTextField
//
//  Created by 鶴本賢太朗 on 2021/04/01.
//

import UIKit

class PaddingTextField: UITextField {
    private let dx: CGFloat
    private let dy: CGFloat
    
    init(dx: CGFloat, dy: CGFloat) {
        self.dx = dx
        self.dy = dy
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: dx, dy: dy)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: dx, dy: dy)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: dx, dy: dy)
    }
}
