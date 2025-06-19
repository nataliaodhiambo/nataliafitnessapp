//
//  progressCircleView.swift
//  nataliaFitnessApp
//
//  Created by natalya odhiambo on 18/06/2025.
//

import SwiftUI

struct progressCircleView: View {
    @Binding var progress: Int
    var goal: Int
    var color: Color
    var width: CGFloat = 20
    var body: some View {
        ZStack{
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .stroke(color, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
    
    struct ProgressCircleView_Previews: PreviewProvider{
        static var previews: some View{
            progressCircleView(progress: .constant(100), goal: 200, color: .red)
        }
    }
}
