import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}

void main() {

print('Welcome to Rock, Paper or Scissors') ;

var round = 0;
var playerScore = 0;
var computerScore = 0;

while (round<3) {

stdout.write('(Rock, Paper or Scissors / Quit)') ;
final input = stdin.readLineSync();


var player;

if (input == 'rock') {
  player = Move.rock.name;
}

else if( input ==  'paper') {
  player = Move.paper.name ;
}

else if( input == 'scissors'){
  player = Move.scissors.name;
}

else if( input == 'quit'){
  print('Exit is sucsessfully!');
  break;
}
else {
   print('Try Again!');
}


final randomNumber = Random().nextInt(3);
final computer = Move.values[randomNumber].name;

print('Player: $player');
print('Computer: $computer');

if (player == Move.rock.name && computer == Move.scissors.name ||
    player == Move.paper.name && computer == Move.rock.name ||
    player == Move.scissors.name && computer == Move.paper.name ) {
  
  playerScore++;
}
else if( player == computer ) {
  print('Draw');
}
else {
  
  computerScore++;
}

round++;
}

if (playerScore>computerScore) {
  print('You win');
}
else if (computerScore<playerScore){
  print('Game Over!');
}

}





