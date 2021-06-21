//
//  ProductViewModel.swift
//  IntroRxSwift
//
//  Created by Samet Bugra Oktay on 21.06.2021.
//

import Foundation
import RxSwift
import RxCocoa


struct ProductViewModel {
    
    var items = PublishSubject<[Product]>()
    
    func fetchItems() {
        
        let products = [
        Product(imageName: "house", title: "Home"),
        Product(imageName: "gear", title: "Settings"),
        Product(imageName: "person.circle", title: "Profile"),
        Product(imageName: "airplane", title: "Flights"),
        Product(imageName: "bell", title: "Activity")
        ] 
        
        items.onNext(products)
        items.onCompleted()
        
    }
}

