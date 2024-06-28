# Fetch - iOS Coding Challenge

This is an iOS app developed as a part of the Fetch coding challenge. The app allows users to browse recipes using the MealDB API. The two main endpoints used are:

- [https://themealdb.com/api/json/v1/1/filter.php?c=Dessert](https://themealdb.com/api/json/v1/1/filter.php?c=Dessert) - Fetches the list of meals in the Dessert category.
- [https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID](https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID) - Fetches the meal details by its ID.

## Project Overview

The project consists of several Swift files, organized into ViewModels and API-related components. Below is a brief overview of the key files:

### 1. DetailViewModel.swift

This ViewModel manages the data for the detail view, fetching and populating details such as ingredients, measures, and recipe information.

### 2. CategoryListViewModel.swift

The CategoryListViewModel handles the data for the category list, fetching and sorting recipes from the MealDB API.

### 3. APIResponse.swift

This file defines the Codable structs used for decoding API responses. It includes structures for category responses, meal objects, and recipe details.

## How to Run

To run the project, follow these steps:

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the project using the latest version of Xcode.

## Dependencies

The project does not rely on external dependencies beyond the standard SwiftUI and Foundation libraries.

## API Interaction

The app communicates with the [MealDB API](https://themealdb.com/api.php) to fetch category lists and recipe details. The code handles null or empty values from the API responses.

## SwiftUI and Asynchronous Programming

The project utilizes SwiftUI for the user interface, and the asynchronous features of Swift are employed to handle API calls efficiently.
