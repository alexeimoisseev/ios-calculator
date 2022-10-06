//
//  ContentView.swift
//  Calculator
//
//  Created by Alexei Moisseev on 06.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var a: String = ""
    @State private var b: String = ""
    @State private var result: String = ""
    
    func calculate() {
        result = String(Int(a)! + Int(b)!)
    }
    var body: some View {
        VStack {
            HStack {
                TextField("a", text: $a)
                Text("+")
                TextField("b", text: $b)
            }
            VStack {
                Button(action: calculate) {
                    Text("=")
                }
                TextField("result", text: $result)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
