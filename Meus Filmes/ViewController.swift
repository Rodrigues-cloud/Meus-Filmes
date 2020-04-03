//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Usuário on 25/03/20.
//  Copyright © 2020 Uesley Rodrigues. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "Ação do Inicio ao Fim.", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Star Wars", descricao: "Uma Aventura no Espaço.", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Esteja Preparado.", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(titulo: "DeadPool", descricao: "Esse é para Morrer de Rir.", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(titulo: "O Regresso", descricao: "Uma Aventura Fantastica.", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(titulo: "A Herdeira", descricao: "Ela ficou com tudo.", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "Em busca de Adrenalina.", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Regresso do Mau", descricao: "Você vai morrer de medo!", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Tarzan", descricao: "Um mistério na Floresta.", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(titulo: "Hardcore", descricao: "Ruas de Sangue.", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[ indexPath.row ]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        //classe Layer para aredondar os botoes e imagens
        
        /*celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true*/
        
        
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalheFilme" {
        
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let filmeSelecionado = self.filmes[ indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

