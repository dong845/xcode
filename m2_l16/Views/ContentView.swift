//
//  ContentView.swift
//  m2_l16
//
//  Created by 吕东杭 on 2021/12/31.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var travel_model = TravelModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment:.leading, spacing: 15){
                    ForEach(travel_model.travel){
                        t in NavigationLink(
                            destination: DetailView(travels:t),
                            label: {ZStack{
                                Image(t.image)         .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(15)
                                
                                VStack{
                                    if t.quotes.count > 1{
                                        Text(t.quotes[0])
                                            .font(.largeTitle)
                                            .foregroundColor(Color.white).fontWeight(.bold)
                                    }
                                    
                                    Text("- "+t.name).foregroundColor(Color.white)
                                }.padding([.top, .leading], 20.0).shadow(color: .black, radius: 10, x: 2, y: 2)
                            }.frame(width: .none, height: 400, alignment: .center).clipped().cornerRadius(15).padding([.leading, .trailing],15)
                                
                            })
                    }
                }
            }.navigationBarTitle("Authors")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
