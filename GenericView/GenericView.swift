//
//  GenericView.swift
//  GenericView
//
//  Created by Jitae Kim on 8/20/17.
//  Copyright © 2017 Jitae Kim. All rights reserved.
//

import UIKit

@IBDesignable
class GenericView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupXib()
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupXib()
        setupViews()
    }

    func setupXib() {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        
        contentView = view
        
        contentView.frame = bounds
        contentView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(contentView)

    }
    
    // Override this to provide finishing touches to view
    func setupViews() {
        
    }
}
