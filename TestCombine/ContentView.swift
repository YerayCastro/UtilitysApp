//
//  ContentView.swift
//  TestCombine
//
//  Created by Yery Castro on 17/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contador = Modelo()
    @State private var titulo = ""
    
    var body: some View {
        VStack {
            Text("Contador = \(contador.contador)")
            Button("Reiniciar") {
                contador.contador += 1
            }
            Spacer()
            vista2()
            Spacer()
            vista3()
            Spacer()
            vista4()
            Spacer()
            vista5()
            
        }
        
    }
}

struct vista2: View {
    
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack {
            Text("Contador de vista 2(ObservedObject) = \(contador.contador)")
            Button("Sumar contador") {
                contador.contador += 1
            }
        }
    }
}

struct vista3: View {
    
    @StateObject var contador = Modelo()
    
    var body: some View {
        VStack {
            Text("Contador de vista 2(EnvironmentObject) = \(contador.contador)")
            Button("Sumar contador") {
                contador.contador += 1
            }
        }
    }
}

struct vista4: View {
    
    @EnvironmentObject var contador: Modelo
    
    var body: some View {
        VStack {
            Text("Contador de vista 4(EnvironmentObject) = \(contador.contador)")
            Button("Sumar contador") {
                contador.contador += 1
            }
        }
    }
}

struct vista5: View {
    
    @EnvironmentObject var contador: Modelo
    
    var body: some View {
        VStack {
            Text("Contador de vista 5(ObservedObject) = \(contador.contador)")
            Button("Sumar contador") {
                contador.contador += 1
            }
        }
    }
}





