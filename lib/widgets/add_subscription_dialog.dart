import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:subscriptions_tracker/models/subscription.dart';
import 'package:subscriptions_tracker/utils/app_color_palette.dart';
import 'package:subscriptions_tracker/utils/color_picker.dart';

class AddSubscriptionDialog extends StatefulWidget {
  @override
  AddSubscriptionDialogState createState() => new AddSubscriptionDialogState();
}

class AddSubscriptionDialogState extends State<AddSubscriptionDialog> {
  Color _color = Colors.grey;
  Color _fColor = Colors.white;
  String _subscriptionName;
  DateTime _fromDateTime = new DateTime.now();
  bool _allDayValue = false;
  bool _saveNeeded = false;
  bool _hasLocation = false;
  bool _hasName = false;

  Future<bool> _onWillPop() async {
    _saveNeeded = _hasLocation || _hasName || _saveNeeded;
    print('| hasLocation: ' +
        _hasLocation.toString() +
        '| hasName: ' +
        _hasName.toString() +
        '| saveNeeded: ' +
        _saveNeeded.toString());
    if (!_saveNeeded) return true;

    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle =
        theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);

    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              content: new Text('Discard new event?', style: dialogTextStyle),
              actions: <Widget>[
                new FlatButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      Navigator.of(context).pop(
                          false); // Pops the confirmation dialog but not the page.
                    }),
                new FlatButton(
                    child: const Text('DISCARD'),
                    onPressed: () {
                      Navigator.of(context).pop(
                          true); // Returning true to _onWillPop will pop again.
                    })
              ],
            );
          },
        ) ??
        false;
  }

  void _colorPicker() async {
    _color = await _colorPickerDialog();

    if (_color.computeLuminance() >= 0.5) {
      _fColor = AppColorPalette.darkGrey;
    } else {
      _fColor = Colors.white;
    }

    setState(() {});
  }

  Future<Color> _colorPickerDialog() async => await showDialog(
        context: context,
        child: new SimpleDialog(
          title: const Text('Subscription Color'),
          children: <Widget>[
            new ColorPicker(
              type: MaterialType.transparency,
              onColor: (color) {
                Navigator.pop(context, color);
              },
              currentColor: _color,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        title: const Text('New Subscription'),
        actions: [
          new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(new Subscription(
                    new DateTime.now(),
                    _fromDateTime,
                    Colors.red,
                    'Test',
                    new Duration(days: 30),
                    20.0));
              },
              child: new Text('SAVE',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
      body: new Form(
          onWillPop: _onWillPop,
          child: new ListView(
              padding: const EdgeInsets.only(
                  bottom: 16.0, left: 16.0, right: 16.0, top: 8.0),
              children: <Widget>[
                new Container(
                    alignment: Alignment.bottomLeft,
                    child: new TextField(
                        decoration: const InputDecoration(
                            labelText: 'Subscription name', filled: true),
                        style: Theme.of(context).textTheme.headline,
                        onChanged: (String value) {
                          setState(() {
                            _hasName = value.isNotEmpty;
                            if (_hasName) {
                              _subscriptionName = value;
                            } else {
                              _subscriptionName = null;
                            }
                          });
                        })),
                new Row(
                  children: <Widget>[
                    new Container(
                        alignment: Alignment.center,
                        child: new CircleAvatar(
                          radius: 30.0,
                          backgroundColor: _color,
                          foregroundColor: _fColor,
                          child: new Text(
                            _subscriptionName == null ||
                                    _subscriptionName.isEmpty
                                ? '?'
                                : _subscriptionName[0].toUpperCase(),
                            style: new TextStyle(fontSize: 25.0),
                          ),
                        )),
                    new Text('Color: '),
                    new RaisedButton(onPressed: () {
                      _colorPicker();
                    }),
                  ],
                ),
                new Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    alignment: Alignment.bottomLeft,
                    child: new TextField(
                        decoration: const InputDecoration(
                            labelText: 'Location',
                            hintText: 'Where is the event?',
                            filled: true),
                        onChanged: (String value) {
                          setState(() {
                            _hasLocation = value.isNotEmpty;
                          });
                        })),
                new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text('Date Subscribed',
                          style: Theme.of(context).textTheme.caption),
                      new DateTimeItem(
                          dateTime: _fromDateTime,
                          onChanged: (DateTime value) {
                            setState(() {
                              _fromDateTime = value;
                              _saveNeeded = true;
                            });
                          })
                    ]),
                new Container(
                    decoration: new BoxDecoration(
                        border: new Border(
                            bottom: new BorderSide(
                                color: Theme.of(context).dividerColor))),
                    child: new Row(children: <Widget>[
                      new Checkbox(
                          value: _allDayValue,
                          onChanged: (bool value) {
                            setState(() {
                              _allDayValue = value;
                              _saveNeeded = true;
                            });
                          }),
                      const Text('All-day'),
                    ]))
              ].map((Widget child) {
                return new Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    height: 96.0,
                    child: child);
              }).toList())),
    );
  }
}

class DateTimeItem extends StatelessWidget {
  DateTimeItem({Key key, DateTime dateTime, @required this.onChanged})
      : assert(onChanged != null),
        date = new DateTime(dateTime.year, dateTime.month, dateTime.day),
        time = new TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
        super(key: key);

  final DateTime date;
  final TimeOfDay time;
  final ValueChanged<DateTime> onChanged;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return new DefaultTextStyle(
        style: theme.textTheme.subhead,
        child: new Row(children: <Widget>[
          new Expanded(
              child: new Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          bottom: new BorderSide(color: theme.dividerColor))),
                  child: new InkWell(
                      onTap: () {
                        showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: date.subtract(const Duration(days: 30)),
                            lastDate:
                                date.add(const Duration(days: 30))).then<Null>(
                            (DateTime value) {
                          if (value != null)
                            onChanged(new DateTime(value.year, value.month,
                                value.day, time.hour, time.minute));
                        });
                      },
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Text(
                                new DateFormat('EEE, MMM d yyyy').format(date)),
                            const Icon(Icons.arrow_drop_down,
                                color: Colors.black54),
                          ])))),
        ]));
  }
}
