Original App Design Project - README Template
===

# Food Nation

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

<div>
    <a href="https://www.loom.com/share/214b1ae3f38349a1927e20678150a0b0">
      <p>Simulator - iPhone 15 Pro - 23 April 2024 - Watch Video</p>
    </a>
    <a href="https://www.loom.com/share/214b1ae3f38349a1927e20678150a0b0">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/214b1ae3f38349a1927e20678150a0b0-with-play.gif">
    </a>
  </div>

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

* Input your personal information, dietary preferences, and meal goals for a tailored experience.
* Set your ingredient preferences, dietary restrictions, and desired body goals to receive personalized recommendations.
#### Discover Delicious Recipes

* Scroll through a curated list of mouthwatering meal options based on your preferences and goals.
* Explore detailed information about each meal, including cost, ingredients, and preparation time, empowering you to make informed choices.

#### Stay Informed with Real-Time Data

* Stay up-to-date with real-time data on trending foods for optimal protein intake, ensuring you meet your nutritional needs effortlessly.


### App Evaluation

- **Category:** Food

- **Mobile:** Mobile is essential for instant access to travel information.
- **Story:** Allows users to plan and track vacations easily.
- **Market:** Targets anyone interested in traveling.
- **Habit:** While not habitually used, it serves as a go-to resource for travel guidance.
- **Scope:** Offers a range of features including search, real-time data, favorites, subscriptions, and community interaction.



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

- [ ] Recipe -> Recipe Detail -> Home

- [x] Recipe Detail -> Favorites -> 

- [ ] Favorites -> Recipe Detail Favorites

- [ ] Preferences -> Home

## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="https://imgur.com/IXXUJMy" width=600>

### [BONUS] Digital Wireframes & Mockups
https://www.figma.com/file/r7uHcIHDsDbWvytscL50Bc/Figma-Meal-Prep-App?type=design&node-id=0%3A1&mode=design&t=Kp191PnKaRmTg5fu-1 

### [BONUS] Interactive Prototype
https://www.figma.com/proto/r7uHcIHDsDbWvytscL50Bc/Figma-Meal-Prep-App?type=design&node-id=1-2&t=SXAgUa8djPjaNaAM-1&scaling=scale-down&page-id=0%3A1&starting-point-node-id=1%3A2&mode=design 

<div>
    <a href="https://www.loom.com/share/bf95b825c5ad4602b68b1ae5a06452e1">
      <p>Interactive Prototype Video on Figma</p>
    </a>
    <a href="https://www.loom.com/share/bf95b825c5ad4602b68b1ae5a06452e1">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/bf95b825c5ad4602b68b1ae5a06452e1-with-play.gif">
    </a>
  </div>

## Schema 

[This section will be completed in Unit 9]

### Models

<blockquote class="imgur-embed-pub" lang="en" data-id="a/4QUe5Qr" data-context="false" ><a href="//imgur.com/a/4QUe5Qr"></a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>


### Networking

Network Request on main screen = https://api.spoonacular.com/recipes/findByNutrients?apiKey=fa58640addfd40d88962b3471f84a960&minProtein=20&maxProtein=100&number=15 


- [Create basic snippets for each Parse network request]

  
- API Endpoint = https://api.spoonacular.com/recipes/findByNutrients
