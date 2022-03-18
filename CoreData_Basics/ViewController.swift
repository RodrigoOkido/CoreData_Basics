//
//  ViewController.swift
//  CoreData_Basics
//
//  Created by Rodrigo Yukio Okido on 16/03/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
        
    var personList: [Person] = []
    var movieList: [Movie] = []
    var persistentContainer: NSPersistentContainer {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        return appDelegate.persistentContainer
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - DATA CREATION
    /**
     Generation of the database. Call each Entitity creation data function. To avoid data duplication, this function delete all data first before creates again.
     */
    @IBAction func generateData() {
        textView.text = ""
        
        deleteAllData()
        
        generatePersonData()
        generateCarData()
        generateMovieData()
        
        textView.text = "Data created!\n"
    }
    
    
    /**
     Generate some Person data to include in our CoreData. It added to a list to be able to access them by other entities / properties on this example.
     */
    func generatePersonData() {
        
        let person1 = Person(context: persistentContainer.viewContext)
        person1.name = "Vincent Winters"
        person1.email = "vincenw@email.com"
        person1.age = 35
        
        let person2 = Person(context: persistentContainer.viewContext)
        person2.name = "John Doe"
        person2.email = "johndoe@email.com"
        person2.age = 21
        
        let person3 = Person(context: persistentContainer.viewContext)
        person3.name = "Sheryl Foley"
        person3.email = "sheryl@email.com"
        person3.age = 28
        
        let person4 = Person(context: persistentContainer.viewContext)
        person4.name = "Irvin Russel"
        person4.email = "irvin_russel@email.com"
        person4.age = 18
        
        let person5 = Person(context: persistentContainer.viewContext)
        person5.name = "Clarice Cole"
        person5.email = "clarice_cole@email.com"
        person5.age = 63
        
        personList.append(person1)
        personList.append(person2)
        personList.append(person3)
        personList.append(person4)
        personList.append(person5)
        
        
        // Save data changes on CoreData.
        saveDataChanges()
    }
    
    
    /**
     Generate some Car data to include in our CoreData.
     */
    func generateCarData() {
        
        let car_model1 = Car(context: persistentContainer.viewContext)
        car_model1.transmission = "Automatic"
        car_model1.model = "Cruze"
        car_model1.brand = "Chevrolet"
        car_model1.body_type = "SEDAN"
        car_model1.top_speed = 200
        car_model1.price = 90000
        car_model1.year = 2018
        
        let car_model2 = Car(context: persistentContainer.viewContext)
        car_model2.transmission = "Manual"
        car_model2.model = "Uno"
        car_model2.brand = "Fiat"
        car_model2.body_type = "Hatch"
        car_model2.top_speed = 180
        car_model2.price = 50000
        car_model2.year = 2010
        
        let car_model3 = Car(context: persistentContainer.viewContext)
        car_model3.transmission = "Manual"
        car_model3.model = "Viper SRT10 Coupe"
        car_model3.brand = "Dodge"
        car_model3.body_type = "Coupé"
        car_model3.top_speed = 250
        car_model3.price = 380000
        car_model3.year = 2007
        
        let car_model4 = Car(context: persistentContainer.viewContext)
        car_model4.transmission = "Automatic"
        car_model4.model = "X6 M"
        car_model4.brand = "BMW"
        car_model4.body_type = "SUV"
        car_model4.top_speed = 240
        car_model4.price = 250000
        car_model4.year = 2019
        
        let car_model5 = Car(context: persistentContainer.viewContext)
        car_model5.transmission = "Automatic"
        car_model5.model = "Odyssey"
        car_model5.brand = "Honda"
        car_model5.body_type = "Van"
        car_model5.top_speed = 200
        car_model5.price = 180000
        car_model5.year = 2019
        
        let car_model6 = Car(context: persistentContainer.viewContext)
        car_model6.transmission = "Automatic"
        car_model6.model = "Tucson"
        car_model6.brand = "Hyundai"
        car_model6.body_type = "Van"
        car_model6.top_speed = 200
        car_model6.price = 320000
        car_model6.year = 2021
        
        let car_model7 = Car(context: persistentContainer.viewContext)
        car_model7.transmission = "Automatic"
        car_model7.model = "Duster"
        car_model7.brand = "Renault"
        car_model7.body_type = "SUV"
        car_model7.top_speed = 200
        car_model7.price = 99000
        car_model7.year = 2022
        
        let car_model8 = Car(context: persistentContainer.viewContext)
        car_model8.transmission = "Manual"
        car_model8.model = "Kwid"
        car_model8.brand = "Renault"
        car_model8.body_type = "Hatch"
        car_model8.top_speed = 180
        car_model8.price = 50000
        car_model8.year = 2015
        
        
        // Relationship PERSON <-> CAR (1-n)
        car_model1.person = personList[0]
        car_model2.person = personList[1]
        car_model3.person = personList[2]
        car_model4.person = personList[3]
        car_model5.person = personList[4]
        car_model6.person = personList[0]
        car_model7.person = personList[1]
        car_model8.person = personList[2]
        
        
        // Save data changes on CoreData.
        saveDataChanges()
    }
    
    
    /**
     Generate some Movie data to include in our CoreData.
     */
    func generateMovieData() {
        
        let movie1 = Movie(context: persistentContainer.viewContext)
        movie1.name = "Homem-Aranha: Sem Volta Para Casa"
        movie1.released_year = 2021
        movie1.duration = "2h 28m"
        movie1.gender = "Ação, Aventura, Ficção científica"
        movie1.overview = "Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha."
        
        let movie2 = Movie(context: persistentContainer.viewContext)
        movie2.name = "Red: Crescer é Uma Fera"
        movie2.released_year = 2022
        movie2.duration = "1h 40m"
        movie2.gender = "Animação, Família, Comédia, Fantasia"
        movie2.overview = "Mei, de treze anos, está experimentando a estranheza de ser uma adolescente com uma reviravolta – quando ela fica muito animada, ela se transforma em um panda vermelho gigante."
        
        let movie3 = Movie(context: persistentContainer.viewContext)
        movie3.name = "Agente das Sombras"
        movie3.released_year = 2022
        movie3.duration = "1h 44m"
        movie3.gender = "Ação, Thriller"
        movie3.overview = "Confiança, identidade e o perigo do poder sem controle levam um agente secreto ao limite. Travis Block (Liam Neeson) vive e luta nas sombras. Um “consertador” autônomo do governo, Block é um homem perigoso cujas atribuições incluíam extrair agentes de situações ocultas. Quando Block descobre que um programa sombrio chamado Operação Unidade está abatendo cidadãos comuns por razões conhecidas apenas pelo seu supervisor, o chefe do FBI, Robinson (Aidan Quinn), ele pede a ajuda de uma jornalista (Raver-Lampman), mas seu passado e presente colidem quando seu filha e neta são ameaçadas. Agora Block precisa resgatar as pessoas que ama e expor a verdade para uma chance de redenção. Nada nem ninguém está seguro quando os segredos estão escondidos nas sombras."
        
        let movie4 = Movie(context: persistentContainer.viewContext)
        movie4.name = "Batman"
        movie4.released_year = 2022
        movie4.duration = "3h 5m"
        movie4.gender = "Crime, Mistério, Thriller"
        movie4.overview = "Bruce Wayne é um jovem bilionário da cidade de Gotham City, Nova Jersey, que também age secretamente como o vigilante noturno Batman após o assassinato dos seus pais."
        
        let movie5 = Movie(context: persistentContainer.viewContext)
        movie5.name = "Encanto"
        movie5.released_year = 2021
        movie5.duration = "1h 42m"
        movie5.gender = "Animação, Comédia, Família, Fantasia"
        movie5.overview = "Uma garota chamada Mirabel Madrigal cresce como o único membro não mágico de sua família, que vivem escondidos em uma vibrante casa encantada nas montanhas da Colômbia."
        
        let movie6 = Movie(context: persistentContainer.viewContext)
        movie6.name = "Sem Saída"
        movie6.released_year = 2022
        movie6.duration = "1h 35m"
        movie6.gender = "Terror, Thriller"
        movie6.overview = "Darby Thorne é uma mulher que viaja devido a uma emergência familiar, fica presa em nevasca e é forçada a se abrigar numa área de descanso na estrada com um grupo de desconhecidos. Ao topar com uma garota sequestrada numa van, ela encara uma terrível luta de vida ou morte para descobrir quem é o sequestrador."
        
        let movie7 = Movie(context: persistentContainer.viewContext)
        movie7.name = "Alerta Vermelho"
        movie7.released_year = 2021
        movie7.duration = "1h 57m"
        movie7.gender = "Ação, Comédia, Crime, Thriller"
        movie7.overview = "No mundo do crime internacional, a INTERPOL lança um Alerta Vermelho, o que inicia uma caçada para capturar a mais notória ladra de artes do globo."
        
        let movie8 = Movie(context: persistentContainer.viewContext)
        movie8.name = "O Projeto Adam"
        movie8.released_year = 2022
        movie8.duration = "1h 46m"
        movie8.gender = "Ficção científica, Aventura, Comédia"
        movie8.overview = "Depois de viajar no tempo e ir parar em 2022 sem querer, o piloto de combate Adam Reed se une à sua versão de 12 anos de idade para salvar o futuro."
        
        let movie9 = Movie(context: persistentContainer.viewContext)
        movie9.name = "Um dia difícil"
        movie9.released_year = 2022
        movie9.duration = "1h 36m"
        movie9.gender = "Ação, Thriller, Crime"
        movie9.overview = "Depois de tomar medidas extremas para encobrir um acidente, um policial corrupto começa a receber ameaças de uma misteriosa testemunha e as coisas saem do controle."
        
        let movie10 = Movie(context: persistentContainer.viewContext)
        movie10.name = "The Commando"
        movie10.released_year = 2022
        movie10.duration = "1h 33m"
        movie10.gender = "Ação, Crime, Thriller"
        movie10.overview = "Um agente da DEA com PTSD retorna para casa após uma missão fracassada e agora deve proteger sua família de uma invasão de casa depois que um condenado recentemente libertado e seus capangas vêm atrás de seu estoque de milhões dentro da casa do agente."
        

        movieList.append(movie1)
        movieList.append(movie2)
        movieList.append(movie3)
        movieList.append(movie4)
        movieList.append(movie5)
        movieList.append(movie6)
        movieList.append(movie7)
        movieList.append(movie8)
        movieList.append(movie9)
        movieList.append(movie10)
        
        
        // Relationship PERSON <-> MOVIE (n-n)
        movie1.addToPerson([personList[0], personList[1], personList[4]])
        movie2.addToPerson([personList[0], personList[1], personList[3], personList[4]])
        movie3.addToPerson([personList[0], personList[1], personList[2]])
        movie4.addToPerson([personList[2], personList[3]])
        movie5.addToPerson([personList[1], personList[4]])
        movie6.addToPerson([personList[2], personList[4]])
        movie7.addToPerson([personList[0], personList[1]])
        movie8.addToPerson([personList[3], personList[4]])
        movie9.addToPerson([personList[1], personList[2]])
        movie10.addToPerson([personList[0], personList[1], personList[2], personList[3], personList[4]])


        
        // Save data changes on CoreData.
        saveDataChanges()
    }
    
    
    //MARK: - Save & Delete
    /**
     Save any data changes on Core Data.
     */
    func saveDataChanges() {
        textView.text = ""
        do {
            try persistentContainer.viewContext.save()
            textView.text = "Changes saved!\n\(textView.text ?? "")"
        } catch {
            textView.text = "Error: \(error)\n\(textView.text ?? "")"
        }
    }
    
    
    /**
     Wipe all data from the database.
     */
    @IBAction func deleteAllData() {
        textView.text = ""
        do {
            personList.removeAll()
            movieList.removeAll()
            
            let personList = try persistentContainer.viewContext.fetch(Person.fetchRequest())
            personList.forEach {
                persistentContainer.viewContext.delete($0)
            }
            
            let carList = try persistentContainer.viewContext.fetch(Car.fetchRequest())
            carList.forEach {
                persistentContainer.viewContext.delete($0)
            }
            
            let movieList = try persistentContainer.viewContext.fetch(Movie.fetchRequest())
            movieList.forEach {
                persistentContainer.viewContext.delete($0)
            }
            
            try persistentContainer.viewContext.save()
            
            textView.text = "Deleted\n\(textView.text ?? "")"
        } catch {
            textView.text = "Error on deletion: \(error)\n\(textView.text ?? "")"
        }
    }
    
    
    //MARK: - DATABASE QUERIES
    /**
     Show all person who whatched Spider Man movie in the database.
     */
    @IBAction func showSpiderManViewers() {
        textView.text = ""
        do {
            let request = Movie.fetchRequest()
            request.predicate = NSPredicate(format: "name = %@" ,"Homem-Aranha: Sem Volta Para Casa")
            let movie = try persistentContainer.viewContext.fetch(request).first

            let allViewers = movie?.person as? Set<Person> ?? []
            let formatted = allViewers.map { "\t\($0)" }.joined(separator: "\n")
            textView.text = "Query - all viewers:\n\(formatted)\n\(textView.text ?? "")"
        } catch {
            textView.text = "Error on query: \(error)\n\(textView.text ?? "")"
        }
    }
    
    
    /**
     Show all owners of Hatch cars.
     */
    @IBAction func showHatchOwners() {
        textView.text = ""
        do {
            let request = Person.fetchRequest()
            let people = try persistentContainer.viewContext.fetch(request)
            
            let owners = people.filter({ person in
                return (person.car ?? []).contains(where: { car in
                    (car as? Car)?.body_type == "Hatch"
                })
            })
                        
            let formatted = owners.map { "\t\($0)" }
            textView.text = "Query - current Hatch owners:\n\(formatted)\n\(textView.text ?? "")"
        } catch {
            textView.text = "Error on query: \(error)\n\(textView.text ?? "")"
        }
    }
}

