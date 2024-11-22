
import Foundation

class MeetingRoom {
    var name: String
    var date: String
    var people: Int
    
    init (name: String, date: String, people: Int) {
        self.name = name
        self.date = date
        self.people = people
    }
}
func GetRandomNumber(max: Int, min: Int = 0) -> Int {
    return Int.random(in: min..<max)
}
func GetRandomName() -> String {
    var nums = [Int] ()
    var num: Int
    repeat {
        num = GetRandomNumber(max: 20, min: 1)
    } while nums.contains(num)
    nums.append(num)
    return "Sala " + String(num)
}
func GetRandomPeople() -> Int {
    var nums = [Int] ()
    var num: Int
    repeat {
        num = GetRandomNumber(max: 20, min: 1)
    } while nums.contains(num)
    nums.append(num)
    return num
}
func GetRandomDate() -> String{
    let date = Date()
    let calendar = Calendar.current
    let formatter = DateFormatter()
    
    var dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
    guard
        let days = calendar.range(of: .day, in: .month, for: date),
        let randomDay = days.randomElement()
    else {
            return "ERROR"
    }
    dateComponents.setValue(randomDay, for: .day)
    
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "dd-MM-yyyy"
    let stringDate = formatter.string(from: calendar.date(from: dateComponents)!)
    return stringDate
}

func Exercise8(){
    var meetingRooms = [MeetingRoom] ()
    let roomNum = GetRandomNumber(max: 6, min: 1)
    repeat {
        meetingRooms.append(MeetingRoom(name: GetRandomName(),date: GetRandomDate(), people: GetRandomPeople()))
    } while meetingRooms.count < roomNum
    
    print("¡Bienvenido a gestión de reuniones! Estas son las salas disponibles actualmente.")

    print("-------------------------------")
    for room in meetingRooms {
        print(room.name + "\n" + "   - Capacidad: " + String(room.people) + "\n" + "   - Fecha: " + room.date)
    }
    print("-------------------------------")
}
