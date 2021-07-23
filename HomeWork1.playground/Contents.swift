//: Playground - noun: a place where people can play

import UIKit

// TASK 1

/// Можно не создавать, но лучше создать.
/// Хорошая практика иметь константы для неизменных или входных данных и оперировать ими.

/* Как я понимаю, можно не создавать эти переменные
   amount of pizza = 5
   amount of beer = 10
 
   number of workers per pizza = 6
   number of workers per beer = 3
 
   И допустим, что количество сотрудников меньше 30, т.е. съедят они не все
*/

let numberOfWworkers: Int = 27

let pizzaCount = 5
let beerCount = 10
let numberOfPeoplePerPizza = 6
let numberOfPeoplePerBeer = 3

/// Опять же, комментарии это хорошо, но читаемость кода ухудшается, когда вместо, например
/// let pizzaPieces = pizzaCount * numberOfPeoplePerPizza
/// видишь 5 * 6.
/// Но, ход мыслей правильный

// столько человек можно накормить пятью пиццами
5 * 6

// столько человек можно напоить шестью пивами
10 * 3

/// Форматирование кода: делай отступы для кода в блоках (между фигурных скобок `{...}` )
/// `else` идет на одной строке после `}`
if numberOfWworkers > 30 {
    print ("На всех не хватит")
 } else {
    print ("Устроителю вечеринки достанется кусочков пиццы: \((pizzaCount*numberOfPeoplePerPizza - numberOfWworkers)*2)")
    print ("Устроителю вечеринки достанется литров пива: \(Double(beerCount*numberOfPeoplePerBeer - numberOfWworkers)*0.5)")
 }

// using operator %

if numberOfWworkers > 30 {
    print ("На всех не хватит")
} else {
    print ("Устроителю вечеринки достанется кусочков пиццы (используя оператор %): \((pizzaCount*numberOfPeoplePerPizza - (numberOfWworkers % 30))*2)")
    print ("Устроителю вечеринки достанется литров пива(используя оператор %): \(Double(beerCount*numberOfPeoplePerBeer - (numberOfWworkers % 30))*0.5)")}

/// По еде - правильно.
/// Но, не посчитал по напиткам.


// TASK 2

// Половины сбережений каждого участника

/*
let halfMoneyMine: Int = 100
let halfMoneyFriend1: Int = 250
let halfMoneyFriend2: Int = 200
*/

let halfMoneyMine: Int = 300
let halfMoneyFriend1: Int = 254
let halfMoneyFriend2: Int = 253

/// Форматирование кода:
/// `{` идет на одной строке после условия
/// При использовании логических операторов, например `&&`, скобки ставить не нужно
/// `else` идет на одной строке после `}`
if halfMoneyMine < halfMoneyFriend1 && halfMoneyMine < halfMoneyFriend2 {
    /// Прочитай еще раз задание. Ориентируемся на меньшую из половин сбережений,
    /// а не тратим сбережения того, у кого их больше :)
   print ("У меня денег меньше всего")
   var totalBudget = halfMoneyMine * 3
   print ("Все скинулись и бюджет составил: \(totalBudget)")

/// Кажется, что здесь условие избыточное.
/// Чтобы найти наибольшее или наименьшее из трех чисел, достаточно 2 проверок, например
/// `first < second && first < third` говорит о том, что first - наименьшее из трех чисел.
    
} else if halfMoneyFriend1 < halfMoneyFriend2 {
    print ("Меньше всего денег у первого друга")
    var totalBudget = halfMoneyFriend1 * 3
    print ("Все скинулись и бюджет составил: \(totalBudget)")
} else {
    print ("Меньше всего денег у второго друга")
    var totalBudget = halfMoneyFriend2 * 3
    print ("Все скинулись и бюджет составил: \(totalBudget)")
}

/// Ход мыслей правильный: находим половины и сравниваем.
/// Но, саму сумму так и не посчитал.


// TASK 3

/// Для данной константы есть более подходящее название: `grossSalary`
//let greySalary: Double = 455.17
let nettSalary: Double = 1110.17
/// Совершенно верно
// Приведение к типу Int отбрасывает дробное значение, поэтому для округления до целого добавляем единицу

/// Для данной константы есть более подходящее название: `nettSalary`
var grossSalary = Int (nettSalary - (nettSalary * 0.44)+1)

print("Зарплата на руки: \(grossSalary)")



