//
//  fitnessTabView.swift
//  nataliaFitnessApp
//
//  Created by natalya odhiambo on 18/06/2025.
//

import SwiftUI

struct fitnessTabView: View {
    @State var selectedTab = "Home"
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .purple
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            homeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    
                    Text("Charts")
                }
        }
    }
}

#Preview {
    fitnessTabView()
}
