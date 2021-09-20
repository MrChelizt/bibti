import 'package:bibti/constants.dart';
import 'package:flutter/material.dart';
import 'package:bibti/utils/utils.dart';
import 'package:bibti/screens/screens.dart';

import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorTeal,
        title: Image.asset(
          'images/LogoWhiteSmallWithText.png',
          height: displayHeight(context) * 0.05,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: displayWidth(context) * 0.05),
            child: GestureDetector(
              onTap: () => Navigator.popAndPushNamed(context, WelcomeScreen.id),
              child: Icon(Icons.logout),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: displayHeight(context) * 0.2,
              child: DrawerHeader(
                decoration: BoxDecoration(color: kColorTeal),
                child: Container(
                  child: Text('data'),
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(displayWidth(context) * 0.04),
        color: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ExpandableFab(
        distance: displayHeight(context) * 0.5,
        children: [
          Container(
            width: displayWidth(context) * 0.6,
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.hourglass_bottom),
                  Text(
                    kWaitWithMe.toUpperCase(),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: kColorPurple,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: displayHeight(context) * 0.015,
                  fontFamily: 'Kollektif',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: displayWidth(context) * 0.6,
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_walk),
                  Text(
                    kTakeTransport.toUpperCase(),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: kColorPurple,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: displayHeight(context) * 0.015,
                  fontFamily: 'Kollektif',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: displayWidth(context) * 0.6,
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text(
                    kDoortoDoorBuddy.toUpperCase(),
                  ),
                ],
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: kColorPurple,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: displayHeight(context) * 0.015,
                  fontFamily: 'Kollektif',
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: kColorTeal,
        child: Container(
          height: displayHeight(context) * 0.07,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.group_rounded),
                onPressed: () {},
                color: Colors.white,
              ),
              SizedBox(),
              IconButton(
                icon: Icon(Icons.warning),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    this.initialOpen,
    @required this.distance,
    @required this.children,
  });

  final bool initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  _ExpandableFabState createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _expandAnimation;
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          ..._buildExpandingActionButtons(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: displayHeight(context) * 0.07,
      height: displayHeight(context) * 0.07,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/LogoPurpleSmall.png',
                height: displayHeight(context) * 0.035,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children.length;
    final step = displayHeight(context) * 0.07;
    for (var i = 0, angleInDegrees = displayHeight(context) * 0.08;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children[i],
        ),
      );
    }
    return children;
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.0 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            onPressed: _toggle,
            backgroundColor: kColorPurple,
            child: Image.asset(
              'images/LogoWhiteSmall.png',
              height: displayHeight(context) * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ExpandingActionButton extends StatelessWidget {
  const _ExpandingActionButton({
    @required this.directionInDegrees,
    @required this.maxDistance,
    @required this.progress,
    @required this.child,
  });

  final double directionInDegrees;
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        // final offset = Offset.fromDirection(
        //   directionInDegrees * (math.pi / 180.0),
        //   progress.value * maxDistance,
        // );
        return Positioned(
          right: displayWidth(context) * 0.2,
          bottom: directionInDegrees,
          child: Transform.rotate(
            angle: (1.0 - progress.value) * math.pi / 2,
            child: child,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}

@immutable
class FakeItem extends StatelessWidget {
  const FakeItem({
    @required this.isBig,
  });

  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      height: isBig ? 128.0 : 36.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: Colors.grey.shade300,
      ),
    );
  }
}
