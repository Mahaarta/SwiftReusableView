//
//  NavBarDesign1.swift
//  
//
//  Created by Minata Putra Mahaarta on 5/4/22.
//

import UIKit
import Foundation

public class NavBarDesign1: UIView {
    
    @IBOutlet private var view: UIView!
    @IBOutlet weak var mainContainer: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var leftContentContainer: UIView!
    @IBOutlet private weak var leftIconImage: UIImageView!
    @IBOutlet weak var leftButton: UIButton!
    
    public override func awakeFromNib() {
        initWithNib()
    }
    
    public func initWithNib() {
        Bundle.module.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        setupLayout()
    }
    
    public func setupLayout() {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    public var viewBackgroundColor: UIColor = UIColor.clear {
        didSet {
            mainContainer.backgroundColor = viewBackgroundColor
        }
    }
    
    public var leftContentBackgroundColor: UIColor = UIColor.clear {
        didSet {
            leftContentContainer.backgroundColor = leftContentBackgroundColor
        }
    }
    
    public var leftContentImageString: String = "" {
        didSet {
            leftIconImage.image = UIImage(named: leftContentImageString)
        }
    }
    
    public var textColorString: UIColor = UIColor.black {
        didSet {
            titleLabel.textColor = textColorString
        }
    }
    
    public var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    public var isLeftContentContainerRounded: CGFloat {
        set {
            leftContentContainer.cornerRadius = leftContentContainer.height / 2
        }
        get {
            return leftContentContainer.cornerRadius
        }
    }
    
    public var isLeftContentContainerHidden: Bool {
        set {
            leftContentContainer.isHidden = newValue
        }
        get {
            return leftContentContainer.isHidden
        }
    }
    
    public var isTitleStringHidden: Bool {
        set {
            titleLabel.isHidden = newValue
        }
        get {
            return titleLabel.isHidden
        }
    }
}
