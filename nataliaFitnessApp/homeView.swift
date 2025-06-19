//
//  homeView.swift
//  nataliaFitnessApp
//
//  Created by natalya odhiambo on 18/06/2025.
//

import SwiftUI

struct homeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 5
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    
                    Spacer()
                    VStack{
                        VStack(alignment: .leading, spacing:8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.purple)
                            
                            Text ("200 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing:8){
                            Text("Active Time")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.purple)
                            
                            Text ("45 minutes")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing:8){
                            Text("Stand Time")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.purple)
                            
                            Text ("3 hours")
                                .bold()
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        progressCircleView(progress: $calories, goal: 600, color: .red)
                        
                        progressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all,20)
                        
                        progressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                        
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
}
#Preview {
    homeView()
}
