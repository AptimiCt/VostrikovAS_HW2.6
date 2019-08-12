//
//  ViewController.swift
//  VostrikovAS_HW2.6
//
//  Created by Александр Востриков on 08/08/2019.
//  Copyright © 2019 Александр Востриков. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    private let border: CGFloat = 1
    
    var nameArray = ["Александр",
                     "Елена",
                     "Сергей",
                     "Ольга",
                     "Дмитрий",
                     "Наталья",
                     "Андрей",
                     "Екатерина",
                     "Алексей",
                     "Анна",
                     "Максим",
                     "Татьяна",
                     "Евгений",
                     "Юлия",
                     "Владимир",
                     "Анастасия",
                     "Иван",
                     "Ирина",
                     "Михаил",
                     "Мария"]
    var lastNameArray = ["Иванов",
                         "Смирнова",
                         "Кузнецов",
                         "Попова",
                         "Васильев",
                         "Петрова",
                         "Соколов",
                         "Михайлова",
                         "Новиков",
                         "Федорова",
                         "Морозов",
                         "Волкова",
                         "Алексеев",
                         "Лебедева",
                         "Семенов",
                         "Егорова",
                         "Павлов",
                         "Козлова",
                         "Степанов",
                         "Николаева"]
    var emailArray = ["Ivano@test.ru",
                      "Smirno@test.ru",
                      "Kuznetso@test.ru",
                      "Popo@test.ru",
                      "Vasilie@test.ru",
                      "Petro@test.ru",
                      "Sokolo@test.ru",
                      "Mihailo@test.ru",
                      "Noviko@test.ru",
                      "Fedoro@test.ru",
                      "Morozo@test.ru",
                      "Volko@test.ru",
                      "Alekse@test.ru",
                      "Lebede@test.ru",
                      "Semeno@test.ru",
                      "Egoro@test.ru",
                      "Pavlo@test.ru",
                      "Kozlo@test.ru",
                      "Stepano@test.ru",
                      "Nikolae@test.ru"]
    var telofonArray = ["89995684358",
                        "89995544358",
                        "89993484358",
                        "89995813358",
                        "89949984358",
                        "89995684444",
                        "89995692358",
                        "89995684351",
                        "89994484358",
                        "89995999358",
                        "89995680008",
                        "89995909358",
                        "89991094358",
                        "89999184358",
                        "89995684398",
                        "89995609858",
                        "89997544358",
                        "89333684358",
                        "89995600358",
                        "89943684355"]
    var person: [Person] = []
    
    override func viewDidLoad() {
        
         person = generatePerson(nameArray: nameArray.shuffled(), lastNameArray: lastNameArray.shuffled(), emailArray: emailArray.shuffled(), telofonArray: telofonArray.shuffled())
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
            case is DitailViewController :
                let detailVC = segue.destination as! DitailViewController
                if let indexPath = tableView.indexPathForSelectedRow{
                    detailVC.person = person[indexPath.row]
                }
            case is SectionTableViewController:
                let sectionVC = segue.destination as! SectionTableViewController
                sectionVC.person = person
            default:
                break
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForTaskOne",
                                                 for: indexPath)
        let fullName = "\(person[indexPath.row].firstName) \(person[indexPath.row].lastName)"
        cell.textLabel?.text = fullName
        cell.textLabel?.font = UIFont.init(name: "Marker Felt", size: 17)
        cell.textLabel?.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        cell.imageView?.layer.borderColor = UIColor.yellow.cgColor
        cell.imageView?.layer.borderWidth = border
        cell.imageView?.image = UIImage(named: person[indexPath.row]
            .lastName) ?? UIImage(named: "blankImage")
        cell.backgroundColor = #colorLiteral(red: 0.01402148046, green: 0.4091996551, blue: 0.5910353661, alpha: 1)
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        return cell
    }
}

extension ViewController{
    
    func generatePerson(nameArray: [String],
                        lastNameArray: [String],
                        emailArray: [String],
                        telofonArray: [String]) -> [Person]{
        
        var person: [Person] = []
        
        for i in 0..<lastNameArray.count {
            person.append(Person(firstName: nameArray[i],
                                 lastName: lastNameArray[i],
                                 email: emailArray[i],
                                 telofon: telofonArray[i]))
        }
        return person
    }
}

