# Clothes Store App

A responsive shopping app where users can view products, and add/remove them to a shopping basket.

## Tools

Written in Swift 1.2
Developed in Xcode 6.4
Planned on good old fashioned pen and paper.

## User Stories
### Complete:
1. As a User I can view the products and their category, price and availability information. 2. As a User I can add a product to my shopping cart.
2. As a User I can remove a product from my shopping cart.
3. As a User I can view the total price for the products in my shopping cart.

### Outstanding:
5. As a User I can apply a voucher to my shopping cart.
6. As a User I can view the total price for the products in my shopping cart with discounts applied.
8. As a User I am alerted when I apply an invalid voucher to my shopping cart.
9. As a User I am unable to add Out of Stock products to the shopping cart.

## To use the app
To run from Xcode:
1. Git clone this repository.
2. Open `ClothesStoreApp.xcodeproj` in Xcode (v6.4 recommended).
3. Run in any of the iPad simulators.

To install app directly on iPad
1. Git clone this repository.
2. Open `ClothesStoreApp.ipa` in iTunes.
3. In iTunes select your device, go to the `Apps` section, and install ClothesStoreApp.

## Notes
Building this app in a short amount of time, I focused on developing sound object models that could be easily extended for future requirements. For example, the `CategoryStruct` could be extended to include other properties (such as size), and the `description` extended for internationalization by varying the return value.

```
struct CategoryStruct {

    let gender : Gender
    let department : Department

}

enum Gender {
    case Male
    case Female

    var description : String {
        switch self {
            case .Male   :  return "Male"
            case .Female :  return "Female"
        }
    }
}

enum Department {
    case Footwear, Casualwear, Formalwear
}
```

Similarly by using containers for the UI of the app, it could enable the app to be adapted for an iPhone screen, by repositioning the layout of the containers.

## Refactoring and Improvements
An issue that became clear at the end of the 3 hours was a weakness in way the add/remove from basket functions affect the `quantity` of the product in the `StoreCatalog`. The 2 models, `Store` and `Basket` lack a reliable, common way of identifying products. The current implementation is buggy and inefficent. Going forward, I would implement a `uniqueID` property of each `product`, so that the models would have a common reference to identify a product by.
