# language: en

Feature: Search games by developer

  @gamesByDeveloper
  Scenario: Filter games that was developed by Nintendo
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the study: Nintendo
      When the user search games by study
      Then 1 games will match
      And the names of these games are
      | NAME                       |
      | Splatoon                   |
      And the following message is displayed: A game developed by Nintendo was found.

  @gamesByDeveloper
  Scenario: Filter games that was developed by Nintendo
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the study: 'xyz'
      When the user search games by study
      Then 0 games will match
      And the following message is displayed: No game developed by 'xyz' found
