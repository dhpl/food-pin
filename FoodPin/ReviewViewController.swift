//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Long on 8/10/17.
//  Copyright © 2017 Long. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var containerView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var greatButton: UIButton!
    @IBOutlet var goodButton: UIButton!
    @IBOutlet var dislikeButton: UIButton!
    
    
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let restaurant = restaurant{
            backgroundImageView.image = UIImage(named: restaurant.image)
            imageView.image = UIImage(named: restaurant.image)
        }
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        containerView.transform = CGAffineTransform.init(translationX: 0.0, y: -1000)
        greatButton.transform = CGAffineTransform.init(translationX: 1000, y: 0.0)
        goodButton.transform = CGAffineTransform.init(translationX: 1000, y: 0.0)
        dislikeButton.transform = CGAffineTransform.init(translationX: 1000, y: 0.0)
    }

    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.containerView.transform = .identity
        })
        UIView.animate(withDuration: 1, animations: {
            self.greatButton.transform = .identity
        })
        UIView.animate(withDuration: 1.5, animations: {
            self.goodButton.transform = .identity
        })
        UIView.animate(withDuration: 2, animations: {
            self.dislikeButton.transform = .identity
        })
//        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.2, options: .curveEaseOut, animations: {
//            self.containerView.transform = .identity
//        }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
