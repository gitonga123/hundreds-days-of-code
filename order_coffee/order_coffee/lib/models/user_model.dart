class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';
  static const String PassionTravelling = 'travel';

  String firstName = '';
  String lastName = '';

  Map<String, bool> passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTravelling: false
  };

  bool newsletter = false;

  save() {
    print("Saving user using a web service");
  }
}