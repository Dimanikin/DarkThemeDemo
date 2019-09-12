//
//  FavoriteNewController.swift
//  DarkModeTest
//
//  Created by Dima on 06/09/2019.
//  Copyright © 2019 Dima. All rights reserved.
//

import UIKit

class FavouriteNewController: UIViewController {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "iOS13_BlueWhite_FlareZephyr"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMainImageView()
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = configureBlurEffect(effect: blurEffect)
        view.addSubview(blurView)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect, style: .secondaryLabel)
        let vibrancyEffectView = configureVibrancyView(effect: vibrancyEffect)
        blurView.contentView.addSubview(vibrancyEffectView)
        
        let myLabel = configureLabel()
        vibrancyEffectView.contentView.addSubview(myLabel)
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
         myLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.backgroundColor = .orange
        
    }
    
    private func setMainImageView() {
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFill
    }
    
    private func configureBlurEffect(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 200, left: 32, bottom: 200, right: 32))
        return view
    }
    
    private func configureVibrancyView(effect: UIVisualEffect) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = effect
        view.frame = self.view.bounds.inset(by: .init(top: 190, left: 32, bottom: 190, right: 32))
        return view
    }
    
    private func configureLabel() -> UILabel {
        let label = UILabel()
        label.text = "Dima Anikin"
        label.textAlignment = .center
        label.textColor = .systemBackground
        label.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
}
