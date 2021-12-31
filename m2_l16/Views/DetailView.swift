//
//  DetailView.swift
//  m2_l16
//
//  Created by 吕东杭 on 2021/12/31.
//

import SwiftUI

struct DetailView: View {
    var travels:Travel
    var body: some View {
        VStack(alignment:.leading, spacing: 20){
            Text(travels.name).font(.title).fontWeight(.bold)
            ForEach(travels.quotes, id:\.self){
                t in Text(t)
            }
            Spacer()
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        var travel_model = TravelModel()
        DetailView(travels: travel_model.travel[0])
    }
}
