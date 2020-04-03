//
//  DetalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Usuário on 27/03/20.
//  Copyright © 2020 Uesley Rodrigues. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    @IBOutlet weak var filmeimageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    var filme: Filme!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeimageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
    }

}
