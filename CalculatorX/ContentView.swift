//
//  ContentView.swift
//  CalculatorX
//
//  Created by Hau Nguyen on 01/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    @StateObject private var currentRate = CurrentRateViewModel()
    
    var body: some View {
        CalculatorView()
            .statusBar(hidden: true)
            .onAppear() {
                UIScreen.setRotationDevice(to: .portrait)
            }
            .environmentObject(viewModel)
            .environmentObject(currentRate)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
