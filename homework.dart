import "dart:math";
 void main(List<String> args) {
  Animal animal = new Animal();
  Animal dog =Animal();
  Animal cat =Animal();

  dog.name = 'Bingo';
  dog.numberOfLegs = 4;
  dog.lifeSpan = 10;
  dog.display();

 animal.animalNoise('dog');
 cat.animalNoise("cat");




//Syntax to calculate compund interest
  CompoundInterestCalculator CompoundI = new CompoundInterestCalculator(400000, 3.5, 5);
 print("The compound interest is: ${CompoundI.calculateCompoundInterest()}");


//Syntax for Simple Interest
  simpleInterest SimpleI = simpleInterest();
   SimpleI. principal = 5000;
   SimpleI.rate = 25;
   SimpleI.time = 12;
  print(SimpleI.calculateInterest());



//Calcuate an area
  Area area = Area();
   area.breadth = 56;
   area.length = 134;
   print(area.calculateArea());


 }
  class Animal{
     String? name;
     int? numberOfLegs;
     int? lifeSpan;

   void display(){
   print("Animal name: $name");
   print("Number of Legs: $numberOfLegs");
   print("Life span: $lifeSpan");
   }

   void animalNoise(String name){
     this.name = name;
    // name == 'dog'? print("A dog barks"):name == 'cat'? print("A cat meows"): print("A cow moos");
     switch (name) {
      case 'dog':
         print("Dogs bark");
         break;
      case 'cat':
         print("Cats meow");
         break;
      case 'cow':
         print("Cows moo");
         break;
     default:print("Not an Animal.");
       break;
     }
   }
  }


  class Area {
     double? length;
     double? breadth;

     double calculateArea(){
       return length! * breadth!;
     }
  }


  class simpleInterest{
   double? principal;
   int? time;
   double? rate;

   double calculateInterest(){ return (principal! * time! * rate!* 0.01);  }
  }

 //Class for calculating compound interest
 class CompoundInterestCalculator{
   double? principle;
   double? rate;
   int? time;

   CompoundInterestCalculator(this.principle, this.rate, this.time);

   double calculateCompoundInterest(){
     double amount = principle! * (pow((1 + rate! / 100), time!));
     return amount - principle!;
   }
 }