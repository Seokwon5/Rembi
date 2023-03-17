//
//  SplashView.swift
//  Rembi
//
//  Created by 이석원 on 2023/03/10.
//

import SwiftUI

struct SplashView: View {
    
    //property
    @State private var isActive: Bool = false
    @State private var size: Double = 0.5
    @State private var opacity: Double = 0.5
    
    var body: some View {
        
        
        if isActive {
            MainTabView()
        }else {
            VStack (spacing: 20.0) {
                Image("splashImg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeOut(duration: 1.5)) {
                    size = 1.0
                    opacity = 1.0
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
