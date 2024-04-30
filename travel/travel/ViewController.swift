//
//  ViewController.swift
//  travel
//
//  Created by Brandon Anderson on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeNextButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var welcomeImageView: UIImageView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    private var introPages = [MyIntroPages]()
   
    private var selectedIntroIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introPages = createMockData()
        configure(with: introPages[selectedIntroIndex])
        // Do any additional setup after loading the view.
    }
    
    private func createMockData() -> [MyIntroPages] {
            // This is just using the Calendar API to get a few random dates
        let currText: String
        let currImage: UIImage
        let mockData1 = MyIntroPages(text: "Craft your meal plan", imageCode: .mealPlan)
        let mockData2 = MyIntroPages(text: "Recipe & Ingredient Recommendations", imageCode: .recipeRecommendations)
        let mockData3 = MyIntroPages(text: "Create a routine", imageCode: .routine)
        let mockData4 = MyIntroPages(text: "Save meals to your stash", imageCode: .stash)
        let mockData5 = MyIntroPages(text: "Track your calorie and protein intake", imageCode: .diet)
          
            return [mockData1, mockData2, mockData3, mockData4, mockData5]
        }
    private func configure(with introPages: MyIntroPages) {
        imageView.image = introPages.imageCode.image
        descriptionLabel.text = introPages.text
      }
    
    @IBAction func didTapNextButton(_ sender: UIButton) {
        if (selectedIntroIndex == introPages.count - 1) {
            /*
            let controller = self.storyboard?.instantiateTabBarController(withIdentifier: "FeedTC") as! UITabBarController
            
            self.view.window?.rootViewController = controller
            self.view.window?.makeKeyAndVisible()
            let fun = storyboard?.instantiate
             
            */
            /*
            
            controller.modalPresentationStyle = .fullScreen
            
            controller.modalTransitionStyle = .partialCurl
            
            present(controller, animated:true, completion: nil)
            */
             
            performSegue(withIdentifier: "toFeedTC", sender: self)
        } else {
            selectedIntroIndex =  selectedIntroIndex + 1
            configure(with: introPages[selectedIntroIndex])
        }
    }
    
   
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
        selectedIntroIndex = max(0, selectedIntroIndex - 1)
        if (selectedIntroIndex == 4) {
            performSegue(withIdentifier: "toIntroViewController", sender: self)
        }
        configure(with: introPages[selectedIntroIndex])
    }
    
}

