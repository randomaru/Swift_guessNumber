//
//  main.swift
//  Swiftme-GuessNumber
//
//  Created by Maria Belyaeva on 07.08.2020.
//  Copyright © 2020 Maria Belyaeva. All rights reserved.
//

import Foundation

print("Компьютер случайным образом загадал число. Попробуйте его отгадать.")

let randomNum = Int.random(in: -100...100)
let message = ["start":"Введите ваш вариант числа и нажмите Enter:",
               "more":"Ваше число больше загаданного.",
               "less":"Ваше число меньше загаданного.",
               "win":"Вы отгадали! Загаданное число - ",
               "error":"Ошибка, введите целое число."]
var guessNum:String? = nil
var guesNumToInt:Int? = nil

while guesNumToInt != randomNum
{
    print(message["start"]!)
    guessNum = readLine()
    guesNumToInt = Int(guessNum!)
    if guesNumToInt != nil {
        if guesNumToInt == randomNum {
            print(message["win"]! + "\(guesNumToInt!)")
            break
        }
        else {
            (guesNumToInt! < randomNum) ? (print(message["less"]!))
                                      : (print(message["more"]!))
        }
    }
    else {
        print(message["error"]!)
    }
}
