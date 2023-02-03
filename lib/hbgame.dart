import 'package:carana_square/actors.dart';
import 'package:carana_square/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:firebase_database/firebase_database.dart';

class HBGame extends FlameGame with HasDraggables, HasTappables {
  HBGame({required this.player});
  late FirebaseAuth _auth;
  Player player;
  late JoystickComponent movementJoystick;
  late JoystickComponent attackJoystick;
  late TiledComponent homeMap;
  final Vector2 buttonSize = Vector2.all(50);
  late NotifyingVector2 gameSize;

  @override
  Future<void> onLoad() async {
    final database = FirebaseDatabase.instance.ref();
    database.set({'player': 'teste'});
    await _siginAnonymously();
    final knobMovementPaint = BasicPalette.black.withAlpha(200).paint();
    final backgroundMovementPaint = BasicPalette.white.withAlpha(160).paint();
    final knobAttackPaint = BasicPalette.darkRed.withAlpha(200).paint();
    final backgroundAttackPaint = BasicPalette.white.withAlpha(160).paint();

    await Flame.images.loadAll([playerBrendaPath, playerHeloizaPath]);

    homeMap = await TiledComponent.load(tileMapPath, Vector2.all(64));
    gameSize = homeMap.size;

    add(homeMap);

    add(player);
    camera.followComponent(player);

    movementJoystick = JoystickComponent(
      knob: CircleComponent(radius: 20, paint: knobMovementPaint),
      background: CircleComponent(radius: 50, paint: backgroundMovementPaint),
      margin: const EdgeInsets.only(left: 40, bottom: 40),
    );

    attackJoystick = JoystickComponent(
      knob: CircleComponent(radius: 20, paint: knobAttackPaint),
      background: CircleComponent(radius: 50, paint: backgroundAttackPaint),
      margin: const EdgeInsets.only(right: 40, bottom: 40),
    );

    add(movementJoystick);
    add(attackJoystick);
  }

  Future _siginAnonymously() async {
    _auth = FirebaseAuth.instance;
    if (_auth.currentUser != null) {
      await _auth.signOut();
    }
    try {
      await _auth.signInAnonymously();
    } catch (e) {
      print('erro');
    }
  }
}
