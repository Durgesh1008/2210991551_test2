import Foundation

struct Recipe {
    var name: String
    var ingredients: [Ingredient]
    var instructions: [String]
    var category: [String]
    var nutritionalInformation: NutritionalInfo
}

struct Ingredient {
    var name: String
    var quantity: String
}

struct NutritionalInfo {
    var calories: Int
    var protein: Int
    var carbohydrates: Int
    var fiber: Int
    var fat: Int
    var sodium: Int
    var sugar: Int
}
