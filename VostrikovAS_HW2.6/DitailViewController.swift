//
//  DitailViewController.swift
//  VostrikovAS_HW2.6
//
//  Created by Александр Востриков on 08/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class DitailViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var telefonLabel: UILabel!
    @IBOutlet var fotoImage: UIImageView!
    
    private let border: CGFloat = 2
    
    var person: Person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func viewDidLayoutSubviews() {
        fotoImage.layer.cornerRadius = fotoImage.frame.height / 2
    }
    
    private func updateUI(){
        fullNameLabel.text = "\(person.firstName) \(person.lastName)"
        fotoImage.layer.borderColor = UIColor.black.cgColor
        fotoImage.layer.borderWidth = border
        emailLabel.text = person.email
        telefonLabel.text = person.telefone
        fotoImage.image = UIImage(named: person.lastName) ?? UIImage(named: "blankImage")
    }
}
