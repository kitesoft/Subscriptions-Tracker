import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_authentication.dart';
import 'package:subscriptions_tracker/utils/app_color_palette.dart';
import 'package:subscriptions_tracker/utils/app_text_styles.dart';
import 'package:subscriptions_tracker/utils/font_awesome_icon_data.dart';
import 'package:subscriptions_tracker/utils/helper_functions.dart';
import 'package:subscriptions_tracker/widgets/auth_drawer_header.dart';

const List<String> _drawerContents = const <String>[
  'A',
  'B',
  'C',
  'D',
  'E',
];

void _onOtherAccountsTap(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return new AlertDialog(
        title: const Text('Account switching not implemented.'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

Widget mainDrawer(
    BuildContext context,
    GlobalKey<ScaffoldState> scaffoldKey,
    AppAuthentication auth,
    FirebaseUser user,
    AnimationController _controller,
    Animation<double> _drawerContentsOpacity,
    Animation<Offset> _drawerDetailsPosition,
    bool _showDrawerContents) {
  void _showNotImplementedMessage() {
    HelperFunctions.showInSnackBar(
        scaffoldKey, 'The drawer\'s items don\'t do anything');

    Navigator.pop(context);
  }

  return new Drawer(
    child: new Column(
      children: <Widget>[
        user != null
            ? new AuthDrawerHeader(
                accountName: new Text(
                  user.displayName,
                  style: AppTextStyles.drawerAccountName,
                ),
                accountEmail: new Text(
                  user.email,
                  style: AppTextStyles.drawerAccountEmail,
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: AppColorPalette.darkGrey,
                  backgroundImage: new NetworkImage(user.photoUrl),
                ),
                //TODO: remove other accounts or implement
/*          otherAccountsPictures: <Widget>[
            new GestureDetector(
              onTap: () {
                _onOtherAccountsTap(context);
              },
              child: new Semantics(
                label: 'Switch to Account B',
                child: new CircleAvatar(
                  backgroundColor: AppColorPalette.darkGrey,
                  backgroundImage: const AssetImage(
                    _kAsset1,
                    package: _kGalleryAssetsPackage,
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                _onOtherAccountsTap(context);
              },
              child: new Semantics(
                label: 'Switch to Account C',
                child: new CircleAvatar(
                  backgroundColor: AppColorPalette.darkGrey,
                  backgroundImage: const AssetImage(
                    _kAsset2,
                    package: _kGalleryAssetsPackage,
                  ),
                ),
              ),
            ),
          ],*/
                margin: EdgeInsets.zero,
                onDetailsPressed: () {
                  _showDrawerContents = !_showDrawerContents;
                  if (_showDrawerContents)
                    _controller.reverse();
                  else
                    _controller.forward();
                },
              )
            : new DrawerHeader(
                child: new Row(
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Text('Please login'),
                        new RaisedButton(onPressed: auth.signInWithGoogle)
                      ],
                    )
                  ],
                ),
                decoration: new BoxDecoration(color: AppColorPalette.lightGrey),
              ),
        new MediaQuery.removePadding(
          context: context,
          // DrawerHeader consumes top MediaQuery padding.
          removeTop: true,
          child: new Expanded(
            child: new ListView(
              padding: const EdgeInsets.only(top: 8.0),
              children: <Widget>[
                new Stack(
                  children: <Widget>[
                    // The initial contents of the drawer.
                    new FadeTransition(
                      opacity: _drawerContentsOpacity,
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: _drawerContents.map((String id) {
                          return new ListTile(
                            leading: new CircleAvatar(
                                backgroundColor: AppColorPalette.darkGrey,
                                child: new Text(
                                  id,
                                  style: const TextStyle(color: Colors.white),
                                )),
                            title: new Text(
                              'Drawer item $id',
                              style: AppTextStyles.drawerItem,
                            ),
                            onTap: _showNotImplementedMessage,
                          );
                        }).toList(),
                      ),
                    ),
                    // The drawer's "details" view.
                    new SlideTransition(
                      position: _drawerDetailsPosition,
                      child: new FadeTransition(
                        opacity: new ReverseAnimation(_drawerContentsOpacity),
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new ListTile(
                              leading: const Icon(FontAwesomeIcons.plus),
                              title: const Text('Add account'),
                              onTap: _showNotImplementedMessage,
                            ),
                            new ListTile(
                              leading: const Icon(FontAwesomeIcons.user_cog),
                              title: const Text('Manage account'),
                              onTap: _showNotImplementedMessage,
                            ),
                            new ListTile(
                              leading:
                                  const Icon(FontAwesomeIcons.sign_out_alt),
                              title: const Text('Sign out'),
                              onTap: _showNotImplementedMessage,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
