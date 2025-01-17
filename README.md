Original App Design Project - README Template
===

# Food Nation

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview
- Creation of home and favorites screen, with API requests.
<div>
    <a href="https://www.loom.com/share/3bcc0a8879c444ca8dccf5526fc6ea87">
    </a>
    <a href="https://www.loom.com/share/3bcc0a8879c444ca8dccf5526fc6ea87">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/3bcc0a8879c444ca8dccf5526fc6ea87-with-play.gif">
    </a>
  </div>

- Creation of onboarding Workflow Video
<div>
    <a href="https://www.loom.com/share/214b1ae3f38349a1927e20678150a0b0">
    </a>
    <a href="https://www.loom.com/share/214b1ae3f38349a1927e20678150a0b0">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/214b1ae3f38349a1927e20678150a0b0-with-play.gif">
    </a>
  </div>


- First Creation of App Video
<div>
    <a href="https://www.loom.com/share/4f73676fe1ae4bfa8788da82dbb40b21">
    </a>
    <a href="https://www.loom.com/share/4f73676fe1ae4bfa8788da82dbb40b21">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/4f73676fe1ae4bfa8788da82dbb40b21-with-play.gif">
    </a>
  </div>

### Description

Food Nation is an innovative app designed to revolutionize the way you plan, prepare, and enjoy meals tailored to your unique preferences and goals. Here's what you can expect:

#### Get Started with Ease

* Input your personal information, dietary preferences, body goals, and meal goals for a tailored experience.
* In the future, be able to create and view others food recommendations
#### Discover Delicious Recipes

* Scroll through a curated list of mouthwatering meal options based on your preferences and goals.
* Explore detailed information about each meal, including cost, ingredients, and preparation time, empowering you to make informed choices.

#### Stay Informed with Real-Time Data

* Stay up-to-date with real-time data on trending foods for optimal protein intake, ensuring you meet your nutritional needs effortlessly.


### App Evaluation

- **Category:** Food
- **Mobile:** Mobile is essential for instant access to meal plans and ingredient information.
- **Story:** Allows users to plan, change, and track their meals easily.
- **Market:** Targets anyone interested in losing/gaining weight, tracking their protein intake, and cooking.
- **Habit:** It will be habitually used, and it serves as a go-to resource for meal preparation guidance for your daily meals.
- **Scope:** Offers a range of features, including protein range, real-time data, favorites, subscriptions, and community interaction in the future.



## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User can input information about themselves, preferences and their meal goals for app evaluation.
* User can scroll through a list of meals with recipes that are based on user preferences.
* User can view detailed information about each meal place, including costs, ingredients, time it takes to prepare.
* User can see real-time data on the trending foods for protein intake.
* User can create a list of favorite meals.



**Optional Nice-to-have Stories**


* User can receive personalized recommendations based on preferences.
* User can set meal plans on calendars to remind them to cook it that day
* User can create a checklist of ingredients needed for meals before preparation
* User can see a separate tab for the ingredients and instructions for cooking for each meal.
* User can track past meals and review their experiences.
* User can receive notifications for new deals and recommendations.
* Screen Archetypes
* Search Results Screen
* User can engage with the community by sharing experiences and recommendations.
* User can subscribe for access to more meal options and exclusive deals.

### 2. Screen Archetypes

- [x] Intro Welcome Screen
User can see an overview of the app the first time they open it.

- [ ] Intro Preferences Screen
User can set their preferences such as ingredient preferences, meal goals, body goals.

- [x] Home Screen
User can view a list of recommended recipes based on user preferences. List of recipes will be gathered from an API in real-time.

- [x] Favorites Screen
User can add liked recipes into their stash or favorites bin

- [ ] Meal Detail Screen
User can see in detail each recipe and their instructions, image, ingredients and time it takes to make.



### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Recipe Detail
* Favorites
* Preferences

**Flow Navigation** (Screen to Screen)

- [x] Recipe -> Recipe Detail -> Home

- [ ] Recipe Detail -> Favorites -> 

- [ ] Favorites -> Recipe Detail Favorites

- [ ] Preferences -> Home

## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="https://imgur.com/IXXUJMy.png" width=600>

### [BONUS] Digital Wireframes & Mockups
https://www.figma.com/file/r7uHcIHDsDbWvytscL50Bc/Figma-Meal-Prep-App?type=design&node-id=0%3A1&mode=design&t=Kp191PnKaRmTg5fu-1 

### [BONUS] Interactive Prototype
- Link to interactive protocol in Figma
https://www.figma.com/proto/r7uHcIHDsDbWvytscL50Bc/Figma-Meal-Prep-App?type=design&node-id=1-2&t=SXAgUa8djPjaNaAM-1&scaling=scale-down&page-id=0%3A1&starting-point-node-id=1%3A2&mode=design 


- Video of interactive Protocol in Figma
<div>
    <a href="https://www.loom.com/share/bf95b825c5ad4602b68b1ae5a06452e1">
    </a>
    <a href="https://www.loom.com/share/bf95b825c5ad4602b68b1ae5a06452e1">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/bf95b825c5ad4602b68b1ae5a06452e1-with-play.gif">
    </a>
  </div>

## Schema 

[This section will be completed in Unit 9]

### Models

<img src="https://i.imgur.com/ElQXsA0.png" width=600>

<img src="https://i.imgur.com/cNTMRpJ.png" width=600>


### Networking

Network Request on main screen = https://api.spoonacular.com/recipes/findByNutrients?apiKey=fa58640addfd40d88962b3471f84a960&minProtein=20&maxProtein=100&number=15 


- Parse network Request Code Snippet
var request = URLRequest(url: URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=fa58640addfd40d88962b3471f84a960&minProtein=20&minServings=3&maxReadyTime=60&number=15")!,timeoutInterval: Double.infinity)
request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in 
  guard let data = data else {
    print(String(describing: error))
    return
  }
  print(String(data: data, encoding: .utf8)!)
}

task.resume()


  
- API Endpoint = https://api.spoonacular.com/recipes/findByNutrients
