# 0x03. Dart - Asynchronous

## Introduction
Ce projet porte sur la programmation asynchrone en Dart, essentielle pour gérer les opérations qui prennent du temps comme les appels API, la lecture de fichiers ou les requêtes à une base de données. Vous apprendrez à utiliser la syntaxe `async/await`, à manipuler les objets `Future`, à gérer les erreurs et à effectuer de vraies requêtes HTTP vers des APIs externes (Rick and Morty API).

## Objectifs d'apprentissage
À la fin de ce projet, vous serez capable de :
- Utiliser la syntaxe `async/await` pour gérer les opérations asynchrones.
- Travailler avec les `Future` et comprendre les opérations différées.
- Gérer les erreurs avec des blocs `try-catch` dans des fonctions asynchrones.
- Parser des données JSON issues de réponses API et d'opérations asynchrones.
- Faire des requêtes HTTP vers des APIs externes comme Rick and Morty API.

## Prérequis
- Ubuntu 20.04 LTS
- Dart 3.x.x
- Le fichier `util.dart` fourni (à utiliser mais non à rendre)
- Tous les fichiers doivent se terminer par une nouvelle ligne
- Un fichier `README.md` à la racine du dossier du projet est obligatoire

## Ressources
- [Asynchronous Programming in Dart](https://dart.dev/codelabs/async-await)
- [Asynchronous Programming in Dart and Flutter](https://dart.dev/guides/libraries/futures-error-handling)

## Structure du projet
- Fonctions asynchrones avec `Future`
- Utilisation de `async` et `await`
- Gestion des erreurs asynchrones
- Requêtes HTTP et parsing JSON

## Exemple d'utilisation
```dart
Future<void> fetchData() async {
	try {
		final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/1'));
		if (response.statusCode == 200) {
			final data = jsonDecode(response.body);
			print('Nom: \'${data['name']}\'');
		} else {
			print('Erreur: \'${response.statusCode}\'');
		}
	} catch (e) {
		print('Exception attrapée: $e');
	}
}
```

## Auteur
- Haris Hammache

---
Holberton School - Projet Dart Asynchronous
