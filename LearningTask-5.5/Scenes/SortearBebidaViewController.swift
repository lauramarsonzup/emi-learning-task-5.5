//
//  ViewController.swift
//  LearningTask-5.5
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class SortearBebidaViewController: UIViewController {
    
    @IBOutlet weak var bebidaAnteriorLabel: UILabel!
    @IBOutlet weak var bebidaAtualLabel: UILabel!
    
    var drinkGame: DrinkGame? {
        didSet {
            guard isViewLoaded, let drinkGame = drinkGame else { return }
            atualizaViews(para: drinkGame)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func playGamePressionado(_ sender: UIButton) {
        drinkGame?.sortearBebida()
    }
    
    func atualizaViews(para drinkGame: DrinkGame) {
        bebidaAnteriorLabel.text = drinkGame.bebidaAnterior.rawValue
        bebidaAtualLabel.text = drinkGame.bebidaAtual.rawValue
        self.view.backgroundColor = BackgroundColor.para(drinkGame.bebidaAtual)
    }
}

