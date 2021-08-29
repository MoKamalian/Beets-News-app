//
//  ContentView.swift
//  BeetsNews
//
//  Created by Mo Kamalian on 2021-08-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // The navigationView is used to nagivate to different screens similar to before
        NavigationView {
            // Think of the List{} as a tableView. The implementation of the list below allows us to
            // take the rows and compute them. So in this case we are taking every post and putting in the title.
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("Beets News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Below struct is what we can use to update our tabelview/list with the articles that we want.
// This struct will conform to the Identifiable protocol which will allow us to update the list in an order based
// on the id of the post.
struct Posted: Identifiable {
    let id: String
    let title: String
    
}

let posts = [
    Posted(id: "1", title: "bruhh"),
    Posted(id: "2", title: "beets"),
    Posted(id: "3", title: "scoopity whoop")
]


