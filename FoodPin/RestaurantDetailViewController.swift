//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Long on 8/7/17.
//  Copyright © 2017 Long. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    
    var restaurant: Restaurant!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let restaurant = restaurant{
            restaurantImageView.image = UIImage(named: restaurant.image)
        }
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        navigationItem.title = restaurant.name
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        switch indexPath.row{
            case 0:
                cell.fieldLabel.text = "Name"
                cell.valueLabel.text = restaurant.name
            case 1:
                cell.fieldLabel.text = "Type"
                cell.valueLabel.text = restaurant.type
            case 2:
                cell.fieldLabel.text = "Location"
                cell.valueLabel.text = restaurant.location
            case 3:
                cell.fieldLabel.text = "Phone"
                cell.valueLabel.text = restaurant.phone
            case 4:
                cell.fieldLabel.text = "Been here"
                cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here before \(restaurant.rating)" : "No"
            default:
                cell.fieldLabel.text = ""
                cell.valueLabel.text = ""
        }
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
    
    }
    
    @IBAction func ratingButtonTapped(segue: UIStoryboardSegue){
        if let rating = segue.identifier{
            restaurant.isVisited = true
            switch rating{
                case "great":
                    restaurant.rating = "Absolutely love it! Must try."
                case "good":
                    restaurant.rating = "Pretty good"
                case "dislike":
                    restaurant.rating = "I don't like it."
                default:
                    break
            }
        }
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showReview"{
            let destination = segue.destination as! ReviewViewController
            destination.restaurant = restaurant
        }
    }
}
