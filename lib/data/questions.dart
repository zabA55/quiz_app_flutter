import 'package:quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'Jakie są główne elementy budowania interfejsu w Flutter',
    [
      'Widżety',
      'Komponenty',
      'Bloki',
      'Funkcje',
    ],
  ),
  QuizQuestion('Jak są budowane interfejsy Flutter?', [
    'Poprzez łączenie widżetów w kodzie',
    'Poprzez łączenie widżetów w edytorze wizualnym',
    'Poprzez definiowanie widżetów w plikach konfiguracyjnych',
    'Poprzez używanie XCode dla iOS i Android Studio dla Androida',
  ]),
  QuizQuestion(
    'Jaki jest cel StatefulWidget?',
    [
      'Aktualizować interfejs użytkownika, gdy dane się zmieniają',
      'Aktualizować dane, gdy interfejs użytkownika się zmienia',
      'Ignorować zmiany danych',
      'Renderować interfejs użytkownika, który nie zależy od danych',
    ],
  ),
  QuizQuestion(
    'Którego widżetu powinieneś używać częściej: StatelessWidget czy StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Oba są równie dobre',
      'Żaden z powyższych',
    ],
  ),
  QuizQuestion(
    'Co się stanie, jeśli zmienisz dane w StatelessWidget?',
    [
      'Interfejs użytkownika nie zostanie zaktualizowany',
      'Interfejs użytkownika zostanie zaktualizowany',
      'Najbliższy StatefulWidget zostanie zaktualizowany',
      'Jakiekolwiek zagnieżdżone StatefulWidget zostaną zaktualizowane',
    ],
  ),
  QuizQuestion(
    'Jak powinieneś aktualizować dane w StatefulWidget?',
    [
      'Poprzez wywołanie setState()',
      'Poprzez wywołanie updateData()',
      'Poprzez wywołanie updateUI()',
      'Poprzez wywołanie updateState()',
    ],
  ),
];