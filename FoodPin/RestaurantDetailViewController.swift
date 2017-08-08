//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Long on 8/7/17.
//  Copyright © 2017 Long. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var restaurantName: UILabel!
    @IBOutlet var restaurantType: UILabel!
    @IBOutlet var restaurantLocation: UILabel!
    
    var restaurant: Restaurant!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let restaurant = restaurant{
            restaurantName.text = restaurant.name
            restaurantLocation.text = restaurant.location
            restaurantType.text = restaurant.type
            restaurantImageView.image = UIImage(named: restaurant.image)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
