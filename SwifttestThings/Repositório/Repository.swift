//
//  Repository.swift
//  SwifttestThings
//
//  Created by Bruno Melo da Silva on 23/09/19.
//  Copyright © 2019 Rodrigo Azeredo. All rights reserved.
//

import Foundation


struct Repository {
    var levels: [Level] = [Level]()
    
    var levelOne = Level(name: "Introdução", introduction: "Xalalá", progress: 10.0, section: Section(activities: [Activity(section: "Nome da Seção", name: "Nome da Atividade", description: "Descrição da Atividade", examplo: "var minhaVar", exercise: "Faça algo", responseUser: "", response: "var minhaVar", codeOptions: ["var", "let", "minhaVar", "minhaLet"], moreInfo: "Copie do Colega")]))
    
    var levelTwo = Level(name: "Médio", introduction: "Blablabla", progress: 60.0, section: Section(activities: [Activity(section: "Nome da Seção 2", name: "Nome da Atividade 2", description: "Descrição da Atividade 2", examplo: "var minhaVar 2", exercise: "Faça algo 2", responseUser: "", response: "var minhaVar", codeOptions: ["var", "let", "minhaVar", "minhaLet"], moreInfo: "Copie do Colega")]))
    
    
    init() {
        levels = [levelOne, levelTwo]
    }
    
    
    
    
    func printLevel() {
        var temp = 1
        for v in levels {
            print("\n----Level \(temp)----\n")
            print(v)
            temp += 1
        }
    }
    
    func getLevels() ->[Level] {
        return levels
    }
    
}


