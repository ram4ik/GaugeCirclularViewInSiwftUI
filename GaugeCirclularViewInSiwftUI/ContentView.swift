//
//  ContentView.swift
//  GaugeCirclularViewInSiwftUI
//
//  Created by Ramill Ibragimov on 04.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.25
    
    let gradient = Gradient(colors: [.blue, .purple, .pink, .red, .green])
    
    var body: some View {
        NavigationStack {
            VStack {
                Gauge(value: progress, label: {
                    Text(String(format: "%.1f", progress))
                })
                    .gaugeStyle(.accessoryCircular)
                    .tint(gradient)
                    .scaleEffect(2.4)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text("\(progress)")
                })
                    .gaugeStyle(.automatic)
                    .tint(.orange)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text(String(format: "%.1f", progress))
                })
                    .gaugeStyle(.accessoryCircular)
                    .tint(.indigo)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text("\(progress)")
                })
                    .gaugeStyle(.accessoryCircularCapacity)
                    .tint(.mint)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text("\(progress)")
                })
                    .gaugeStyle(.accessoryLinear)
                    .tint(.cyan)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text("\(progress)")
                })
                    .gaugeStyle(.accessoryLinearCapacity)
                    .tint(.teal)
                    .padding()
                
                Gauge(value: progress, label: {
                    Text("\(progress)")
                })
                    .gaugeStyle(.linearCapacity)
                    .tint(.pink)
                    .padding()
            }
            .navigationTitle("Gauge")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        progress += 0.05
                    } label: {
                        Text("+")
                    }
                    .buttonStyle(.borderedProminent)
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        progress -= 0.05
                    } label: {
                        Text("-")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
