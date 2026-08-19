const numDays = 7;

class DaysLeft{
  int currentDay=0;

  DaysLeft(){
    currentDay = DateTime.now().weekday;
  }

  //Ordinal and name of the day
  final Map<int, Map<String, String>> days = {
    1: {
    'name': 'Monday',
    'ordinal': '1st',
    },
    2: {
    'name': 'Tuesday',
    'ordinal': '2nd',
    },
    3: {
    'name': 'Wednesday',
    'ordinal': '3rd',
    },
    4: {
    'name': 'Thursday',
    'ordinal': '4th',
    },
    5: {
    'name': 'Friday',
    'ordinal': '5th',
    },
    6: {
    'name': 'Saturday',
    'ordinal': '6th',
    },
    7: {
    'name': 'Sunday',
    'ordinal': '7th',
    },
  };

  int howManyDaysLeft(){
    return numDays - currentDay;
  }

  String getDayName(int day){
    return days[day]!['name']!; //This tells Dart that the data can never be null
  }

  String getOrdinal(int day){
    return days[day]?['ordinal'] ?? 'Unknown'; // This is just a polite way to handle possible null values due to wron input it tells Dart that if the data is null use the data on the right
  }

}

void main(List<String> args){
  DaysLeft daysCalculator = DaysLeft();
  print("Today is on ${daysCalculator.getDayName(daysCalculator.currentDay)} the ${daysCalculator.getOrdinal(daysCalculator.currentDay)} day of the week}");
  print ('Only ${daysCalculator.howManyDaysLeft()} day(s) left to end the week');
}