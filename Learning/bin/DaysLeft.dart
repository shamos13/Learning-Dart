const numDays = 7;

class DaysLeft {
  int currentDay = 0;
  DaysLeft () { // Hint: The constructor name should always be the same as the class name
    currentDay = DateTime.now().weekday;
  }
  int howManyDays(){
    return numDays - currentDay;
  }

  String getDayName(int day){
    List<String> days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    return days[day -1 ];
  }

  String getDayOrdinal(int day){
    switch(day){
      case 1:
        return "1st";

      case 2:
        return "2nd";

      case 3:
        return "3rd";

      default:
        return "${day}th";
    }
  }
}

void main(List<String> args){
  DaysLeft daysCalculator = DaysLeft();
  print("Today is ${daysCalculator.getDayName(daysCalculator.currentDay)} the ${daysCalculator.getDayOrdinal(daysCalculator.currentDay)} day of the week ");
  print("Days left in the week: ${daysCalculator.howManyDays()}");
}

/*
* const numDays = 7;

class DaysLeftInWeek {
  int currentDay = 0;

  DaysLeftInWeek() {
    currentDay = DateTime
        .now()
        .weekday
        .toInt();
  }

  int howManyDaysLeft() {
    return numDays - currentDay;
  }
}
void main() {
  DaysLeftInWeek dayCalculator = DaysLeftInWeek();
  print ('Today is day ${dayCalculator.currentDay}');
  print ('${dayCalculator.howManyDaysLeft()} day(s) left in the week');
}
* */