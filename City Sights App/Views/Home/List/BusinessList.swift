//
//  BusinessList.swift
//  City Sights App
//
//  Created by PM on 20/07/2021.
//

import SwiftUI

struct BusinessList: View {
    
    @EnvironmentObject var model:ContentModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack (alignment: .leading, pinnedViews: [.sectionHeaders] ){
                BusinessSection(title: "Restaurants", businesses: model.restaurants)
                BusinessSection(title: "Sights", businesses: model.sights)
            }
        }
    }
}

struct BusinessList_Previews: PreviewProvider {
    static var previews: some View {
        BusinessList()
    }
}
