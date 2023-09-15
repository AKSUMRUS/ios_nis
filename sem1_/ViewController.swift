//
//  ViewController.swift
//  sem1_
//
//  Created by Paul Nikulshin on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = normalizeGrades().description
    }
    
    func normalizeGrades() -> [String: Double] {
        var ans: [String: Double] = [:]
        IOSNis.students = [
            Student(grades: [3.51, 10, 9], fullName: "Ivan"),
            Student(grades: [9, 4.5, 2], fullName: "Petr"),
            Student(grades: [3, 8, 3, 5, 7], fullName: "Pasha"),
            Student(grades: [10, 10, 10, 9, 9.5], fullName: "Oleg")
        ]
        let students = IOSNis.students
        
        var max = 0.0
        
        for student in students {
            if(student.getGrade() > max) {
                max = student.getGrade()
            }
        }
        
        for student in students {
            ans[student.fullName] = student.getGrade()*10/max
        }
        
        return ans
    }
}

