//
//  ViewController.swift
//  EjercicioConstraints
//
//  Created by User-UAM on 8/13/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewDeArriba: UIView!
    //Fotos para redondear
    @IBOutlet weak var FotoUsuario: UIImageView!
    @IBOutlet weak var FotoAlbumUno: UIImageView!
    @IBOutlet weak var FotoAlbumDos: UIImageView!
    @IBOutlet weak var FotoAlbumTres: UIImageView!
    //Like
    @IBOutlet weak var FotoLike: UIImageView!
    @IBOutlet weak var LabelLike: UILabel!
    
    //Views de musica, seguidores y like
    
    @IBOutlet weak var viewMusical: UIView!
    
    @IBOutlet weak var viewSeguidores: UIView!
    @IBOutlet weak var viewLike: UIView!
    
    //Colores
    private let PrimaryColor = UIColor(red: 205/255, green: 93/255, blue: 75/255, alpha: 1.0)
    //rgb(163, 74, 65)
    private let secundaryColor = UIColor(red: 163/255, green: 74/255, blue: 65/255, alpha: 1)
    
    // Variables para controlar el estado de "like"
    private var isLiked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Color del view de arriba o primero
        viewDeArriba.backgroundColor = PrimaryColor
        
        //Redondear
        //Foto Usuario
        FotoUsuario.layer.cornerRadius = FotoUsuario.bounds.height / 2
        FotoUsuario.clipsToBounds = true
        
        //Foto primer Album
        FotoAlbumUno.layer.cornerRadius = FotoAlbumUno.bounds.height / 2
                FotoAlbumUno.clipsToBounds = true
        
        //Foto segundo Album
        FotoAlbumDos.layer.cornerRadius = FotoAlbumDos.bounds.height / 2
        FotoAlbumDos.clipsToBounds = true
        
        //Foto album tres
        FotoAlbumTres.layer.cornerRadius = FotoAlbumTres.bounds.height / 2
                        FotoAlbumTres.clipsToBounds = true
        
        //Marcador view prueba
        viewMusical.layer.backgroundColor = secundaryColor.cgColor
        //viewMusical.layer.borderWidth = 1
        viewMusical.layer.cornerRadius = 20
        viewMusical.clipsToBounds = true
        
        
        // Agregar gesto de toque a la viewLike
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapLikeView))
        viewLike.addGestureRecognizer(tapGesture)
        viewLike.isUserInteractionEnabled = true // Asegura que la viewLike puede ser tocada
    }
    
    @objc func didTapLikeView() {
            isLiked.toggle() // Cambia el estado de "like"
            
            if isLiked {
                FotoLike.tintColor = .red
                LabelLike.text = "\(Int(LabelLike.text ?? "0")! + 1)"
            } else {
                FotoLike.tintColor = .white // Cambia esto al color original del corazón
                LabelLike.text = "\(Int(LabelLike.text ?? "0")! - 1)"
            }
        }
}

