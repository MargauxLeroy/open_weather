# Application métérologique

Cette application a été développée dans le cadre d'un exercice technique.
Il s'agit d'une application mobile affichant les prévisions météorologiques des 5 prochains jours pour une ville donnée en se basant sur [l'API OpenWeather](https://openweathermap.org/api/hourly-forecast).

## Récupérer le projet

### Cloner le repository

```bash
git clone https://github.com/MargauxLeroy/open_weather.git
```

### Se positionner sur la branche dev

```bash
git checkout dev
```

### Récupérer les dépendances utilisées dans le projet

```bash
flutter pub get
```

## Développement

### Mettre à jour les modèles

Les modèles sont implémentés avec la librairie [Freezed](https://pub.dev/packages/freezed).
À chaque mise à jour les fichiers .g / .freezed doivent être regénérés avec la commande :

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Mettre à jour l'arb

La localization (l10n) est gérée avec le(s) fichier(s) .arb.
À chaque ajout, il est nécessaire de lancer la commande pour pouvoir l'utiliser dans l'application :

```bash
flutter gen-l10n
```

## Compilation

```bash
flutter build apk -t lib/main.dart
```

```bash
flutter build appbundle -t lib/main.dart
```
