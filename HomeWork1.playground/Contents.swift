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

/// Очепятка: `Workers`
// Исправляю
let numberOfWorkers: Int = 27

let pizzaCount = 5
/// Тут скорее `beerBottles`
// Исправляю
let beerBottles = 10

let numberOfPeoplePerPizza = 6
let numberOfPeoplePerBeer = 3
let plannedNumberOfWorkers = 30

/// Опять же, комментарии это хорошо, но читаемость кода ухудшается, когда вместо, например
/// let pizzaPieces = pizzaCount * numberOfPeoplePerPizza
/// видишь 5 * 6.
/// Но, ход мыслей правильный

/// Форматирование кода: делай отступы для кода в блоках (между фигурных скобок `{...}` )
/// `else` идет на одной строке после `}`

/// Не сильно понимаю, почему сравниваем с `30`
/// Если это какое-то важное значение - создай для него константу.
// Исправляю выше let plannedNumberOfWorkers = 30. Как следует из условия, заказ расчитан на 30 человек.
if numberOfWorkers > plannedNumberOfWorkers {
    print ("На всех не хватит")
/// Скобки уехали на 1 пробел вправо :)
} else {
    print ("Устроителю вечеринки достанется кусочков пиццы: \((pizzaCount*numberOfPeoplePerPizza - numberOfWorkers)*2)")
    print ("Устроителю вечеринки достанется литров пива: \(Double(beerBottles*numberOfPeoplePerBeer - numberOfWorkers)*0.5)")
}

// using operator %

if numberOfWorkers > plannedNumberOfWorkers {
    print ("На всех не хватит")
} else {
    print ("Устроителю вечеринки достанется кусочков пиццы (используя оператор %): \((pizzaCount*numberOfPeoplePerPizza - (numberOfWorkers % plannedNumberOfWorkers))*2)")
    print ("Устроителю вечеринки достанется литров пива(используя оператор %): \(Double(beerBottles*numberOfPeoplePerBeer - (numberOfWorkers % plannedNumberOfWorkers))*0.5)")}


/// Теперь правильно посчитал :)


// TASK 2

// Половины сбережений каждого участника

/*
let halfMoneyMine: Int = 100
let halfMoneyFriend1: Int = 250
let halfMoneyFriend2: Int = 200
*/

var totalBudget: Int = 0
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
   totalBudget = halfMoneyMine * 3
   print ("Все скинулись и бюджет составил: \(totalBudget)")

/// Кажется, что здесь условие избыточное.
/// Чтобы найти наибольшее или наименьшее из трех чисел, достаточно 2 проверок, например
/// `first < second && first < third` говорит о том, что first - наименьшее из трех чисел.
    
} else if halfMoneyFriend1 < halfMoneyFriend2 {
    print ("Меньше всего денег у первого друга")
    totalBudget = halfMoneyFriend1 * 3
    print ("Все скинулись и бюджет составил: \(totalBudget)")
} else {
    print ("Меньше всего денег у второго друга")
    totalBudget = halfMoneyFriend2 * 3
    print ("Все скинулись и бюджет составил: \(totalBudget)")
}

/// Сумму посчитал правильно в этот раз, молодец!
/// Только выше переменная `totalBudget` объявляется в каждом из блоков.
/// Можно было либо создать ее до `if`, или внутри блоков делать `let`
/// Xcode показывает warning желтым цветом и предлагает пофиксить :)
// Вроде исправил


// TASK 3

/// Для данной константы есть более подходящее название: `grossSalary`
//let greySalary: Double = 455.17

/// Наоборот :)
/// Это `grossSalary`, а посчитать нужно `netSalary`


let grossSalary: Double = 1110.25

/// Совершенно верно
// Приведение к типу Int отбрасывает дробное значение, поэтому для округления до целого добавляем единицу

/// Неправильно тебе подсказал, здесь `netSalary`
/// Ставим пролебы вокруг арифметических операторов ` + `

var netSalary = Int (grossSalary - (grossSalary * 0.44) + 1)

print("Зарплата на руки: \(netSalary)")

/// Третье сделал, вроде, правильно, но округление не всегда правильно работать будет.
/// Если `salary - salary * 0.44` будет целым числом, например:
/// gross: 1000
/// net: 560
/// Округлять не нужно, потому что целое число получается
/// А у тебя получится 561 :)
/// Но это такое, уже нюансы.
/// Можно было этого избежать добавив проверку на то, получилось ли число целым,
/// с помощью if или поигравшись с преобразованием типов
