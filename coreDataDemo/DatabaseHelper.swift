//
//  DatabaseHelper.swift
//  coreDataDemo
//
//  Created by Acxiom Consulting on 31/07/21.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper{
    static var sharedInstance  = DatabaseHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func save(object : [String: String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.address = object["address"]
        student.city = object["city"]
        student.mobile = object["mobile"]
        do{
            try context?.save()
        }
        catch{
            
        }
    }
}
