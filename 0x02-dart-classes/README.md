# Dart - Classes 🎯

![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart&logoColor=white)
![Level](https://img.shields.io/badge/Level-Novice-green)
![Weight](https://img.shields.io/badge/Weight-1-lightgrey)

**Par:** Youssef Belhadj

---

## 📚 Description

Ce projet introduit les **classes Dart**, la fondation de la programmation orientée objet. Vous apprendrez à créer des classes, utiliser les constructeurs, convertir des objets en JSON, implémenter des propriétés privées et travailler avec l'héritage.

Les classes sont importantes car elles aident à organiser le code et à modéliser des objets du monde réel dans vos programmes.

---

## 🎓 Objectifs d'apprentissage

À la fin de ce projet, vous serez capable d'expliquer à n'importe qui (sans l'aide de Google) :

### Général
- ✅ Créer des classes basiques avec propriétés et méthodes
- ✅ Utiliser les constructeurs pour initialiser les objets de classe
- ✅ Convertir les objets vers/depuis JSON avec `toJson()` et `fromJson()`
- ✅ Implémenter les propriétés privées en utilisant le préfixe underscore (`_`)
- ✅ Appliquer l'héritage en étendant une classe à partir d'une autre

---

## 📋 Concepts clés

### 1️⃣ Les Classes Basiques
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Bonjour, je m\'appelle $name');
  }
}
```

### 2️⃣ Les Constructeurs
```dart
class Dog {
  String name;
  String breed;

  // Constructeur simple
  Dog(this.name, this.breed);

  // Constructeur nommé
  Dog.puppy(String name) : this(name, 'Unknown');
}
```

### 3️⃣ Propriétés Privées
```dart
class BankAccount {
  String _accountNumber;  // Privée
  double _balance;        // Privée

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }
}
```

### 4️⃣ Conversion JSON
```dart
class User {
  String name;
  String email;

  User(this.name, this.email);

  // Convertir en JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }

  // Créer depuis JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['name'] as String,
      json['email'] as String,
    );
  }
}
```

### 5️⃣ L'Héritage
```dart
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Un bruit générique');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('Miaou!');
  }
}
```

---

## 🔗 Ressources

- [Dart Programming - Classes](https://dart.dev/guides/language/language-tour#classes)
- [Dart Inheritance](https://dart.dev/guides/language/language-tour#extending-a-class)
- [Null-aware Operators in Dart](https://dart.dev/guides/language/language-tour#null-aware-operators)

---

## ✅ Conditions

- Tous les fichiers seront interprétés/compilés sur **Ubuntu 20.04 LTS** avec **Dart 3.x.x**
- Tous les fichiers doivent se terminer par une nouvelle ligne
- Un fichier **README.md** à la racine du dossier du projet est obligatoire

---

## 🚀 Commandes utiles

```bash
# Compiler et exécuter un fichier Dart
dart run nom_fichier.dart

# Vérifier le format du code
dart format .

# Analyser le code
dart analyze
```

---

## 📁 Structure du projet

```
0x02-dart-classes/
├── README.md
├── 0-hello_class.dart
├── 1-constructor.dart
├── 2-private_properties.dart
├── 3-json_conversion.dart
├── 4-inheritance.dart
└── ...
```

---

## 💡 Conseils

- 📝 Utilisez **des noms explicites** pour vos classes et méthodes
- 🔐 Préférez les propriétés **privées** quand c'est nécessaire
- 🏗️ Utilisez l'**héritage** pour partager le code entre classes similaires
- 📦 Structurez vos classes pour qu'elles soient **réutilisables**

---

**Bonne chance ! 💪**
