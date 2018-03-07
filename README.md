![Title](https://user-images.githubusercontent.com/8667021/37113133-5f200830-223c-11e8-817c-cdc79d05a7dd.png)

## Challenge

Using Ruby and Sinatra, develop an application that allows players to battle against each other.

## Getting Started

### Prerequisites

#### Ruby

As a Ruby project, you'll need to make sure that Ruby is installed on your system.  If you're on Linux or Mac then you should be okay. Otherwise if you're on Windows and haven't used Ruby before, grab it from [here](https://www.ruby-lang.org/en/).

#### Bundler

The easiest way to get started is to install all of the many dependencies using Bundler.  If you're not used it before, simply run the following command:

`gem install bundler`

### Installing

First download the repo using the following command:

`git clone https://github.com/bwk103/battle_app.git`

Next up, run the following command to get the game running on Sinatra:

`rackup`

Then navigate in your browser to the relevant port (by default it's 9292).

## Playing the Game

First, enter your name and the name of your opponent and click on the 'Lets Battle' button.

![Welcome Screen](https://user-images.githubusercontent.com/8667021/37112721-3676b362-223b-11e8-8161-13435913183c.png)

Next, take it in turns to select whether your player attacks, heals, or uses one of the special moves.  Players take it in turns until one player is the winner.  Simple!

![MoveScreen](https://user-images.githubusercontent.com/8667021/37112778-5cd543e8-223b-11e8-9b45-32fd1cfd8680.png)

![ResultScreen](https://user-images.githubusercontent.com/8667021/37112780-5f413d30-223b-11e8-8dc8-db36ffb39f42.png)

## Running the Tests

To run my tests, simply run the following command:

`rspec`

## Tech

- Ruby
- Sinatra
- Bootstrap CDN
- jQuery CDN
- FontAwesome CDN

## Development

In developing this game, I devised and followed the following User Stories:

### User Stories
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

### Extended User Stories:

```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage
```

## Acknowledgements

- Challenge set by [Makers Academy](http://www.makersacademy.com)
- Images from [Pixabay](http://www.pixabay.com)
