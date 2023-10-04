class Animal {
  String category;
  String name;
  String feature;

  Animal(this.category, this.name, this.feature);

  void animalInfo(){
    print("Category: $category \nNAme: $name, \nFeature: $feature ");
  }
}

void main(){
   Animal cat = new Animal('Mammal', 'Cat', "It barks"); // This is how we create an object of a class

   // access the properties
  print("Animal details\n ______________");

  cat.animalInfo();
}