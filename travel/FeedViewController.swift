//
//  FeedViewController.swift
//  foodnation
//
//  Created by Brandon Anderson on 4/28/24.
//

import Foundation
import UIKit
import NukeExtensions
import Nuke


class FeedViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var meals: [Meal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true

        tableView.dataSource = self
        
        fetchMeals()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! MealCell

        // Get the movie associated table view row
        let meal = meals[indexPath.row]

        // Configure the cell (i.e. update UI elements like labels, image views, etc.)

        // Unwrap the optional poster path
        if let mealPhoto = meal.imagePath {
            let imageUrl = meal.imagePath
            
            NukeExtensions.loadImage(with: imageUrl, into: cell.mealImage)
        }
        /*
        if let imagePath = meal.imagePath,

            // Create a url by appending the poster path to the base url. https://developers.themoviedb.org/3/getting-started/images
           let imageUrl = URL(string:imagePath) {

            // Use the Nuke library's load image function to (async) fetch and load the image from the image url.
            NukeExtensions.loadImage(with: imageUrl, into: cell.mealImage)
        
        }
        */
        // Set the text on the labels
        cell.mealTitleLabel.text = meal.title
        cell.mealServingsLabel.text = meal.protein

        // Return the cell for use in the respective table view row
        return cell
    }
    
    //Fetches a list of meals with the spoonacular API
    private func fetchMeals() {
        //URL for the spoonacular Search Recipe by Nutrients endpoint: https://api.spoonacular.com/recipes/findByNutrients
        let url = URL(string: "https://api.spoonacular.com/recipes/findByNutrients?apiKey=fa58640addfd40d88962b3471f84a960&minProtein=20&maxProtein=100&number=15")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        
        let session = URLSession.shared.dataTask(with: request) { data, response, error in
            
            // Check for errors
            if let error = error {
                print("🚨 Request failed: \(error.localizedDescription)")
                return
            }
            
            // Check for server errors
            // Make sure the response is within the `200-299` range (the standard range for a successful response).
            
            guard let httpResponse = response as? HTTPURLResponse, (200...2000).contains(httpResponse.statusCode) else {
                print("🚨 Server Error: response: \(String(describing: response))")
                return
            }
            
            // Check for data
                        guard let data = data else {
                            print("🚨 No data returned from request")
                            return
                        }
            
            // Catch any JSONDecoder fucntion error
            do {
                
                //Decode the JSON data into data model MealFeed
                let decoder = JSONDecoder()
                let meals = try decoder.decode([Meal].self, from: data)
                
                //Access array of meals
               // let meals = mealResponse.results
                
                DispatchQueue.main.async { [weak self] in
                    print("✅ SUCCESS! Fetched \(meals.count)")
                    
                    self?.meals = meals
                    
                    self?.tableView.reloadData()
                }
            } catch {
                //print("🚨 Error decoding JSON data into Meal Response: \(error.localizedDescription)")
                print(String(describing: error))
                print("here")
                return
            }
        }
        
        session.resume()
    }
    
}
