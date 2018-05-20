import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/utils/app_text_styles.dart';
import 'package:subscriptions_tracker/utils/font_awesome_icon_data.dart';
import 'package:subscriptions_tracker/utils/helper_functions.dart';
import 'package:subscriptions_tracker/widgets/auth_drawer_header.dart';

const String _kAsset0 = 'shrine/vendors/zach.jpg';
const String _kAsset1 = 'shrine/vendors/16c477b.jpg';
const String _kAsset2 = 'shrine/vendors/sandra-adams.jpg';
const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

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
        new AuthDrawerHeader(
          accountName: const Text(
            'Zach Widget',
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          accountEmail: const Text('zach.widget@example.com'),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: const AssetImage(
              _kAsset0,
              package: _kGalleryAssetsPackage,
            ),
          ),
          otherAccountsPictures: <Widget>[
            new GestureDetector(
              onTap: () {
                _onOtherAccountsTap(context);
              },
              child: new Semantics(
                label: 'Switch to Account B',
                child: const CircleAvatar(
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
                child: const CircleAvatar(
                  backgroundImage: const AssetImage(
                    _kAsset2,
                    package: _kGalleryAssetsPackage,
                  ),
                ),
              ),
            ),
          ],
          margin: EdgeInsets.zero,
          onDetailsPressed: () {
            _showDrawerContents = !_showDrawerContents;
            if (_showDrawerContents)
              _controller.reverse();
            else
              _controller.forward();
          },
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
                            leading: new CircleAvatar(child: new Text(id)),
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
