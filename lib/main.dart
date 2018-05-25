import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_authentication.dart';
import 'package:subscriptions_tracker/utils/app_text_styles.dart';
import 'package:subscriptions_tracker/utils/app_themes.dart';
import 'package:subscriptions_tracker/utils/font_awesome_icon_data.dart';
import 'package:subscriptions_tracker/utils/helper_functions.dart';
import 'package:subscriptions_tracker/widgets/main_drawer.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.light(context).themeData,
      home: new MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // Drawer fields
  AnimationController _controller;
  Animation<double> _drawerContentsOpacity;
  Animation<Offset> _drawerDetailsPosition;
  bool _showDrawerContents = true;
  // End of Drawer fields

  AppAuthentication auth = new AppAuthentication();
  FirebaseUser currentUser;

  void initState() {
    super.initState();

    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _drawerContentsOpacity = new CurvedAnimation(
      parent: new ReverseAnimation(_controller),
      curve: Curves.fastOutSlowIn,
    );
    _drawerDetailsPosition = new Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));

    // Listen for our auth event (on reload or start)
    auth.firebaseAuth.onAuthStateChanged.listen((user) {
      setState(() {
        currentUser = user;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _popupMenuSelection(String value) {
    HelperFunctions.showInSnackBar(_scaffoldKey, 'You selected: $value');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: new Directionality(
        textDirection: TextDirection.ltr,
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 15.0,
                  left: 35.0,
                  right: 25.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    'Subscriptions',
                    style: AppTextStyles.mainScreenTitle,
                  ),
                  new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.search,
                      color: Theme.of(context).primaryIconTheme.color,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            new Text("User: "),
            currentUser != null
                ? new Text('YES! ${currentUser.displayName}')
                : new Text('NO!'),
            new RaisedButton(onPressed: auth.signInWithGoogle),
            new RaisedButton(onPressed: auth.signOutWithGoogle),
          ],
        ),
      ),
      drawer: mainDrawer(context, _scaffoldKey, auth, currentUser, _controller,
          _drawerContentsOpacity, _drawerDetailsPosition, _showDrawerContents),
      bottomNavigationBar: new BottomAppBar(
        hasNotch: false,
        elevation: 10.0,
        child: new ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new IconButton(
              tooltip: 'Show drawer',
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
              icon: new Icon(FontAwesomeIcons.bars),
            ),
            new PopupMenuButton<String>(
              icon: new Icon(FontAwesomeIcons.ellipsis_v),
              onSelected: _popupMenuSelection,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                        value: 'Toolbar menu',
                        child: const Text('Toolbar menu')),
                    const PopupMenuItem<String>(
                        value: 'Right here', child: const Text('Right here')),
                    const PopupMenuDivider(),
                    const PopupMenuItem<String>(
                        value: 'Hooray!', child: const Text('Hooray!')),
                  ],
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton.extended(
        elevation: 10.0,
        onPressed: () {},
        tooltip: 'Add subscription',
        label: new Text(
          'Add Subscription',
          style: AppTextStyles.addSubscriptionButton,
        ),
        icon: new Icon(
          FontAwesomeIcons.plus,
          size: AppTextStyles.addSubscriptionButton.fontSize + 2.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
