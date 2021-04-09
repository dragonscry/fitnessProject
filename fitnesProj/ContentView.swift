//
//  ContentView.swift
//  fitnesProj
//
//  Created by  Denis on 09.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            VStack (alignment: .leading){
                HStack{
                    Spacer()
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 35, height: 8)
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 25, height: 8)
                    }
                }
                .padding(.trailing, 30)
                Text("Workouts")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 30)
            }
            
            ZStack {
                
                VStack{
                    Text("")
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 0.9026047587, green: 0.8972393274, blue: 0.9067292213, alpha: 1)))
                .cornerRadius(40)
                .offset(x:10, y:20)
                
                VStack{
                    HStack {
                        VStack(alignment: .leading){
                            Text("Athena")
                                .font(.system(size: 40, weight: .bold, design: .rounded))
                            Text("Core, Lower")
                                .font(.system(size: 22, weight: .bold, design: .rounded))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 30)
                        .offset(y: -20)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Duration")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 25)
                                .foregroundColor(.white)
                            HStack {
                                Circle()
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                                Circle()
                                    .frame(width: 6, height: 6)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        HStack {
                            Text("Difficulty")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.white)
                                HStack {
                                    Circle()
                                        .frame(width: 6, height: 6)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundColor(.gray)
                                    Circle()
                                        .frame(width: 6, height: 6)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                        .padding(.leading, 20)
                        
                    }
                    .offset(y:10)
                }
                .frame(width: 360, height: 230)
                .background(Color(#colorLiteral(red: 1, green: 0.7742312551, blue: 0.9904577136, alpha: 1)))
                .cornerRadius(40)
            }
            .padding(.vertical, 20)
            
            //MARK: Small Cards
            VStack (alignment: .leading) {
                Text("Categories")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 95)
                
                HStack{
                    ForEach(cardsData){ item in
                        card(card: item)
                    }
                }
            }
            .padding(.vertical, 20)
            
            
            HStack (spacing: 75) {
                Image(systemName: "house")
                    .font(.system(size: 28))
                Image(systemName: "line.diagonal.arrow")
                    .font(.system(size: 28))
                Image(systemName: "person.2")
                    .font(.system(size: 28))
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 28))
            }
            .padding(.top, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cards: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var background: Color
    var text: Color
}

let cardsData = [
    cards(title: "Yoga", image: "yoga", background: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), text: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))),
    cards(title: "Cadrio", image: "cardio", background: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), text: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))),
    cards(title: "FullBody", image: "fullbody", background: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), text: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
]

struct card: View {
    
    var card : cards
    
    var body: some View {
        ZStack{
            Image(card.image)
                .resizable()
                .frame(width:100, height: 100)
                .offset(y: 20)
            Text(card.title)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .foregroundColor(card.text)
                .offset(x: -15, y: -70)
        }
        .frame(width: 175, height: 240)
        .background(card.background)
        .cornerRadius(40)
    }
}
