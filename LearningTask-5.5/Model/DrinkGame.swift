//
//  DrinkGame.swift
//  LearningTask-5.5
//
//  Created by Laura Pinheiro Marson on 28/10/22.
//

import Foundation

struct DrinkGame {
    private(set) var bebidaAnterior = Bebida.leite
    private(set) var bebidaAtual = Bebida.leite
    
    enum Bebida: String, CaseIterable {
        case leite = "🥛"
        case cerveja = "🍺"
        case whisky = "🥃"
    }
    
    mutating func sortearBebida() {
        var bebidaSorteada = Bebida.allCases.randomElement()
        
        while bebidaSorteada == bebidaAtual {
            bebidaSorteada = Bebida.allCases.randomElement()
        }
        
        guard let bebidaSorteada = bebidaSorteada else { return }
        
        bebidaAnterior = bebidaAtual
        bebidaAtual = bebidaSorteada
    }
}

