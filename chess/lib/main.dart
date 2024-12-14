// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_chess_board/flutter_chess_board.dart';
// import 'package:chess/chess.dart' as chess;
// import 'dart:math';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   ChessBoardController controller = ChessBoardController();
//   AudioPlayer audioPlayer = AudioPlayer();
//   chess.Chess game = chess.Chess();

//   void makeAiMove() {
//     List<chess.Move> moves = game.generate_moves();
//     if (moves.isNotEmpty) {
//       Random random = Random();
//       chess.Move aiMove = moves[random.nextInt(moves.length)];
//       bool moveMade = game.move(aiMove); // Check if move is valid
//       if (moveMade) {
//         controller.makeMove(aiMove.fromAlgebraic, aiMove.toAlgebraic);
//       }
//     }
//   }

//   void playMoveSound() async {
//     await audioPlayer.play(AssetSource('assets/sounds/chessmove.mp3'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.brown,
//       appBar: AppBar(
//         title: Text('Chess'),
//       ),
//       body: Center(
//         child: ChessBoard(
//           controller: controller,
//           boardColor: BoardColor.brown,
//           boardOrientation: PlayerColor.white,
//           onMove: (move) {
//             playMoveSound();

//             bool moveMade = game.move(chess.Move.fromSan(move));
//             if (moveMade) {
//               if (!game.in_checkmate && !game.in_draw) {
//                 makeAiMove();
//               }
//             } else {
//               print("Invalid move: $move");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }



import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:chess/chess.dart' as chess;
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ChessBoardController controller = ChessBoardController();
  AudioPlayer audioPlayer = AudioPlayer();
  chess.Chess game = chess.Chess();

  void makeAiMove() {
    List<chess.Move> moves = game.generate_moves();
    if (moves.isNotEmpty) {
      Random random = Random();
      chess.Move aiMove = moves[random.nextInt(moves.length)];
      bool moveMade = game.move(aiMove); // Check if move is valid
      if (moveMade) {
        controller.makeMove(aiMove.fromAlgebraic, aiMove.toAlgebraic);
      }
    }
  }

  void playMoveSound() async {
    try {
      await audioPlayer.play('assets/sounds/chessmove.mp3', isLocal: true);
      print("Move sound played.");
    } catch (e) {
      print("Error playing sound: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Chess'),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.brown,
          boardOrientation: PlayerColor.white,
          onMove: (move) {
            playMoveSound();

            // Parse the move
            bool moveMade = game.move(chess.Move.fromSan(move));
            if (moveMade) {
              if (!game.in_checkmate && !game.in_draw) {
                makeAiMove();
              }
            } else {
              // Handle invalid move (optional)
              print("Invalid move: $move");
            }
          },
        ),
      ),
    );
  }
}
