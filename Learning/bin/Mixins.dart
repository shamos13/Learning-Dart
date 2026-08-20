// Mixins are used when you want to add reusable functionality
// from another class to your class.
//
// An abstract class cannot be instantiated directly.
// A mixin is specifically designed to be mixed into another class.

mixin SnickersOriginal {
  bool hasHazelnut = true;
  bool hasRice = false;
  bool hasAlmond = false;
}

mixin SnickersCrisp {
  bool hasHazelnut = true;
  bool hasRice = true;
  bool hasAlmond = false;
}

class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBar extends ChocolateBar with SnickersOriginal {
  List<String> ingredients = [];

  // Constructor
  CandyBar() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }

    if (hasHazelnut) {
      ingredients.add('Hazelnut');
    }

    if (hasRice) {
      ingredients.add('Rice');
    }

    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

void main() {
  var snickersOriginal = CandyBar();

  print('Ingredients:');

  snickersOriginal.getIngredients().forEach(
        (ingredient) => print(ingredient),
  );
}