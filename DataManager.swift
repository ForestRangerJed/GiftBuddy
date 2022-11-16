//
//  DataManager.swift
//  GiftBuddy
//
//  Created by Jared Eldridge on 11/15/22.
//

import Foundation
import Firebase

class DataManager: ObservableObject {
    @Published var gifts: [GiftList] = []
    
    init() {
        fetchGifts()
    }
    
    func fetchGifts() {
        gifts.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("GiftList")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let link = data["link"] as? String ?? ""
                    let price = data["price"] as? String ?? ""
                    let title = data["title"] as? String ?? ""
                    
                    let gifts = GiftList(id: id, title: title, price: price, link: link)
                    self.gifts.append(gifts)
                }
            }
        }
    }
    
    func addGift(title: String) {
        let db = Firestore.firestore()
        let ref = db.collection("GiftList").document(title)
        ref.setData(["title": title, "id": 2]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        fetchGifts()
    }
}
