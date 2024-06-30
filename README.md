#Fetch - iOS App Challenge
This iOS application, created for the Fetch coding challenge, allows users to browse and discover recipes using the MealDB API. It utilizes two primary API endpoints:

Dessert Category: Fetches a list of meals under the Dessert category.
Meal Details: Fetches detailed information about a meal based on its ID.
##Application Overview
The project is structured into several Swift files, each serving a distinct function within the app. Here is a summary of the main components:

###1. DetailViewModel.swift
This ViewModel manages the data for the detail view, including fetching and displaying ingredients, measurements, and recipe details.

###2. CategoryListViewModel.swift
The CategoryListViewModel is responsible for handling the data for the category list view, fetching, and organizing dessert recipes from the MealDB API.

###3. APIResponse.swift
This file defines the Codable structs used to decode API responses. It includes structures for category responses, meal objects, and detailed recipe information.

##Running the Project
To run this project on your local machine, follow these instructions:

Clone the Repository: Clone this repository to your local machine using git clone.
Open in Xcode: Navigate to the project directory and open the project file in Xcode.
Build and Run: Build and run the project using the latest version of Xcode.
##Project Dependencies
This project does not require any external dependencies beyond the standard SwiftUI and Foundation libraries, ensuring a lightweight and efficient application.

##API Integration
The app communicates with the MealDB API to retrieve dessert categories and detailed recipe information. It includes robust error handling to address null or empty values from the API responses.

##SwiftUI and Asynchronous Handling
The application utilizes SwiftUI to build the user interface and Swift's asynchronous programming features to manage API calls efficiently, providing a smooth user experience.

##Main Features
Explore Desserts: Browse a list of dessert recipes fetched from the MealDB API.
Recipe Details: Select a recipe to view detailed information, including ingredients and cooking instructions.
User-Friendly Navigation: Seamless navigation between the category list and detailed recipe views.
This project exemplifies a clean and efficient approach to developing an iOS application using SwiftUI and asynchronous API handling, providing a solid foundation for future development and feature enhancements.