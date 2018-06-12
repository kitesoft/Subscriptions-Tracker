import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/*const List<Color> mainColors = const <Color>[
  Colors.black,
  const Color(0xFF980000),
  const Color(0xFFFF00000),
  const Color(0xFFFF9900),
  const Color(0xFFFFFF00),
  const Color(0xFF00FF00),
  const Color(0xFF00FFFF),
  const Color(0xFF4A86E8),
  const Color(0xFF0000FF),
  const Color(0xFF9900FF),
  const Color(0xFFFF00FF),
];

Map<Color, List<Color>> colorList = <Color, List<Color>>{
  Colors.black: const <Color>[
    Colors.black,
    const Color(0xFF434343),
    const Color(0xFF666666),
    const Color(0xFFB7B7B7),
    const Color(0xFFCCCCCC),
    const Color(0xFFD9D9D9),
    const Color(0xFFEFEFEF),
    Colors.white,
  ],
  const Color(0xFF980000): const <Color>[
    const Color(0xFF5B0F00),
    const Color(0xFF85200C),
    const Color(0xFFA61C00),
    const Color(0xFF980000),
    const Color(0xFFCC4125),
    const Color(0xFFDD7E6B),
    const Color(0xFFE6B8AF),
    Colors.white,
  ],
  const Color(0xFFFF00000): const <Color>[
    const Color(0xFF660000),
    const Color(0xFF990000),
    const Color(0xFFCC0000),
    const Color(0xFFFF00000),
    const Color(0xFFE06666),
    const Color(0xFFEA9999),
    const Color(0xFFF4CCCC),
    Colors.white,
  ],
  const Color(0xFFFF9900): const <Color>[
    const Color(0xFF783F04),
    const Color(0xFFB45F06),
    const Color(0xFFE69138),
    const Color(0xFFFF9900),
    const Color(0xFFF6B26B),
    const Color(0xFFF9CB9C),
    const Color(0xFFFCE5CD),
    Colors.white,
  ],
  const Color(0xFFFFFF00): const <Color>[
    const Color(0xFF7F6000),
    const Color(0xFFBF9000),
    const Color(0xFFF1C232),
    const Color(0xFFFFFF00),
    const Color(0xFFFFD966),
    const Color(0xFFFFE599),
    const Color(0xFFFFF2CC),
    Colors.white,
  ],
  const Color(0xFF00FF00): const <Color>[
    const Color(0xFF274E13),
    const Color(0xFF38761D),
    const Color(0xFF6AA84F),
    const Color(0xFF00FF00),
    const Color(0xFF93C47D),
    const Color(0xFFB6D7A8),
    const Color(0xFFD9EAD3),
    Colors.white,
  ],
  const Color(0xFF00FFFF): const <Color>[
    const Color(0xFF0C343D),
    const Color(0xFF134F5C),
    const Color(0xFF45818E),
    const Color(0xFF00FFFF),
    const Color(0xFF76A5AF),
    const Color(0xFFA2C4C9),
    const Color(0xFFD0E0E3),
    Colors.white,
  ],
  const Color(0xFF4A86E8): const <Color>[
    const Color(0xFF1C4587),
    const Color(0xFF1155CC),
    const Color(0xFF3C78D8),
    const Color(0xFF4A86E8),
    const Color(0xFF6D9EEB),
    const Color(0xFFA4C2F4),
    const Color(0xFFC9DAF8),
    Colors.white,
  ],
  const Color(0xFF0000FF): const <Color>[
    const Color(0xFF073763),
    const Color(0xFF0B5394),
    const Color(0xFF3D85C6),
    const Color(0xFF0000FF),
    const Color(0xFF6FA8DC),
    const Color(0xFF9FC5E8),
    const Color(0xFFCFE2F3),
    Colors.white,
  ],
  const Color(0xFF9900FF): const <Color>[
    const Color(0xFF20124D),
    const Color(0xFF351C75),
    const Color(0xFF674EA7),
    const Color(0xFF9900FF),
    const Color(0xFF8E7CC3),
    const Color(0xFFB4A7D6),
    const Color(0xFFD9D2E9),
    Colors.white,
  ],
  const Color(0xFFFF00FF): const <Color>[
    const Color(0xFF4C1130),
    const Color(0xFF741B47),
    const Color(0xFFA64D79),
    const Color(0xFFFF00FF),
    const Color(0xFFC27BA0),
    const Color(0xFFD5A6BD),
    const Color(0xFFEAD1DC),
    Colors.white,
  ],
};*/

const List<Color> mainColors = const <Color>[
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey
];

Map<Color, List<Color>> colorList = <Color, List<Color>>{
  Colors.red: const <Color>[
    const Color(0xFFb71c1c),
    const Color(0xFFc62828),
    const Color(0xFFd32f2f),
    const Color(0xFFe53935),
    const Color(0xFFf44336),
    const Color(0xFFef5350),
    const Color(0xFFe57373),
    const Color(0xFFef9a9a),
  ],
  Colors.pink: const <Color>[
    const Color(0xFF880E4F),
    const Color(0xFFAD1457),
    const Color(0xFFC2185B),
    const Color(0xFFD81B60),
    const Color(0xFFE91E63),
    const Color(0xFFEC407A),
    const Color(0xFFF06292),
    const Color(0xFFF48FB1),
  ],
  Colors.purple: const <Color>[
    const Color(0xFF4A148C),
    const Color(0xFF6A1B9A),
    const Color(0xFF7B1FA2),
    const Color(0xFF8E24AA),
    const Color(0xFF9C27B0),
    const Color(0xFFAB47BC),
    const Color(0xFFBA68C8),
    const Color(0xFFCE93D8),
  ],
  Colors.indigo: const <Color>[
    const Color(0xFF1A237E),
    const Color(0xFF283593),
    const Color(0xFF303F9F),
    const Color(0xFF3949AB),
    const Color(0xFF3F51B5),
    const Color(0xFF5C6BC0),
    const Color(0xFF7986CB),
    const Color(0xFF9FA8DA),
  ],
  Colors.blue: const <Color>[
    const Color(0xFF0D47A1),
    const Color(0xFF1565C0),
    const Color(0xFF1976D2),
    const Color(0xFF1E88E5),
    const Color(0xFF2196F3),
    const Color(0xFF42A5F5),
    const Color(0xFF64B5F6),
    const Color(0xFF90CAF9),
  ],
  Colors.green: const <Color>[
    const Color(0xFF1B5E20),
    const Color(0xFF2E7D32),
    const Color(0xFF388E3C),
    const Color(0xFF43A047),
    const Color(0xFF4CAF50),
    const Color(0xFF66BB6A),
    const Color(0xFF81C784),
    const Color(0xFFA5D6A7),
  ],
  Colors.amber: const <Color>[
    const Color(0xFFFF6F00),
    const Color(0xFFFF8F00),
    const Color(0xFFFFA000),
    const Color(0xFFFFB300),
    const Color(0xFFFFC107),
    const Color(0xFFFFCA28),
    const Color(0xFFFFD54F),
    const Color(0xFFFFE082),
  ],
  Colors.deepOrange: const <Color>[
    const Color(0xFFBF360C),
    const Color(0xFFD84315),
    const Color(0xFFE64A19),
    const Color(0xFFF4511E),
    const Color(0xFFFF5722),
    const Color(0xFFFF7043),
    const Color(0xFFFF8A65),
    const Color(0xFFFFAB91),
  ],
  Colors.brown: const <Color>[
    const Color(0xFF3E2723),
    const Color(0xFF4E342E),
    const Color(0xFF5D4037),
    const Color(0xFF6D4C41),
    const Color(0xFF795548),
    const Color(0xFF8D6E63),
    const Color(0xFFA1887F),
    const Color(0xFFBCAAA4),
  ],
  Colors.grey: const <Color>[
    const Color(0xFF212121),
    const Color(0xFF424242),
    const Color(0xFF616161),
    const Color(0xFF757575),
    const Color(0xFF9E9E9E),
    const Color(0xFFBDBDBD),
    const Color(0xFFE0E0E0),
    const Color(0xFFEEEEEE),
  ],
  Colors.blueGrey: const <Color>[
    const Color(0xFF263238),
    const Color(0xFF37474F),
    const Color(0xFF455A64),
    const Color(0xFF546E7A),
    const Color(0xFF607D8B),
    const Color(0xFF78909C),
    const Color(0xFF90A4AE),
    const Color(0xFFB0BEC5),
  ],
};

/// The size of the color box from the main color row.
const double _kColorBoxSize = 24.0;

/// The width of all the main color boxes.
const double _mainColorsBarWidth = 11 * _kColorBoxSize;

/// The with of the frame that surrounds the color box when the frame is over
/// it. This is a magic number. :)
const double _kBaseFrameWidth = 3.3;

/// The margin the two rows have in the [Material] widget.
const double _kMarginSize = 16.0;

// secondary colors
/// The number of logical pixels between each color along the main axis.
const double _kMainAxisSpacing = 4.0;

/// The number of logical pixels between each color along the cross axis.
const double _kCrossAxisSpacing = 4.0;

/// The ratio of the cross-axis to the main-axis extent of each color.
const double _kSizeRatio = 1.5;

/// The number of colors in one row along the main axis.
const int _kCrossAxisCount = 4;

/// The width of a secondary color box.
const double _secondaryColorBoxWidth =
    (_mainColorsBarWidth - (_kCrossAxisCount - 1) * _kCrossAxisSpacing) / 4;

/// The height of a secondary color box.
const double _secondaryColorBoxHeight = _secondaryColorBoxWidth / _kSizeRatio;

// widget sizes

/// The widget width base on main colors bar width and the margins.
const double kWidgetWidth = _mainColorsBarWidth + _kMarginSize * 2;

/// The widget height base on the 4 margins(there a re two between color rows),
/// the size of a primary box, two heights of the secondary box, and the cross
/// axis space between them.
const double kWidgetHeight = _kMarginSize * 4 +
    _kColorBoxSize +
    _secondaryColorBoxHeight * 2 +
    _kCrossAxisSpacing;

/// This sets the animation for both the selection frame and for the secondary
/// color shifting.
const int _kFrameAnimationDuration = 200;

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    this.currentColor,
    this.elevation,
    this.onColor,
    this.type,
  });

  /// The [Color] you want to initialize the picker with. If the color is not in
  /// the list then black is selected.
  final Color currentColor;

  /// The z-coordinate at which to place this widget. This controls the size
  /// of the shadow below the widget.
  final double elevation;

  /// You will be notified when the user chose a color.
  final ValueChanged<Color> onColor;

  /// The Material type of the picker.
  final MaterialType type;

  @override
  _ColorPickerState createState() => new _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker>
    with TickerProviderStateMixin {
  /// This is the color list that is displayed on the secondary row, and it
  /// updates on animation with the new colors gradually.
  List<Color> _lastColorList;

  /// This is the index at witch the color shifting of the second row is at. Once
  /// the shift is done this is equal to the length of the [_lastColorList].
  int _currentColorChangeIndex = 0;

  /// The index of the main color that is currently shown.
  int _lastKnownColorIndex = 0;

  /// The position at witch the selection frame is at.
  double _dragPosition = 0.0;

  double _frameWidth;
  double _frameBorderWidth;

  Color _selectedColor = const Color(0xFFb71c1c);

  @override
  void initState() {
    super.initState();

    _frameWidth = _kBaseFrameWidth * 2 + _kColorBoxSize;
    _frameBorderWidth = (_frameWidth - _kColorBoxSize) / 2;

    int i = 0;
    colorList.forEach((key, list) {
      int colorIndex = list.indexOf(widget.currentColor);
      if (colorIndex != -1) {
        _lastColorList = list.toList();
        _lastKnownColorIndex = i;
        _dragPosition = i * _kColorBoxSize;
        _selectedColor = widget.currentColor;
      }
      i++;
    });

    if (_lastColorList == null)
      _lastColorList = colorList[mainColors[0]].toList();
  }

  _onDragUpdate(DragUpdateDetails details, RenderFittedBox renderObject) {
    var localPosition = renderObject.globalToLocal(details.globalPosition);
    if (localPosition.dx <= 0) {
      setState(() => _dragPosition = 0.0);
      return;
    }

    if (localPosition.dx > renderObject.size.width - _kColorBoxSize) {
      setState(() => _dragPosition = renderObject.size.width - _kColorBoxSize);
      return;
    }

    setState(() => _dragPosition = localPosition.dx);
  }

  void _onDragEnd(DragEndDetails details) {
    _lastKnownColorIndex = (_dragPosition / _kColorBoxSize).round();
    _moveFrameToPosition();
    _showColors();
  }

  void _moveFrameToPosition() {
    AnimationController controller = new AnimationController(
        duration: const Duration(milliseconds: _kFrameAnimationDuration),
        vsync: this);
    CurvedAnimation curve =
        new CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    double endPoint = _lastKnownColorIndex * _kColorBoxSize;
    Animation animation;
    animation = new Tween(begin: _dragPosition, end: endPoint).animate(curve)
      ..addListener(() {
        setState(() {
          _dragPosition = animation.value;
          if (controller.status == AnimationStatus.completed)
            controller.dispose();
        });
      });

    controller.forward();
  }

  void _mainColorSelected(Color color) {
    _dragPosition = _lastKnownColorIndex * _kColorBoxSize;
    _lastKnownColorIndex = mainColors.indexOf(color);
    _moveFrameToPosition();
    _showColors();
  }

  void _showColors() {
    AnimationController controller = new AnimationController(
        duration: const Duration(milliseconds: _kFrameAnimationDuration),
        vsync: this);

    Animation animation;
    animation =
        new Tween(begin: 0, end: _lastColorList.length).animate(controller)
          ..addListener(() {
            int position =
                (animation.value * _lastColorList.length / 10).ceil();
            print(_lastColorList.toString());
            if (position == _currentColorChangeIndex) return;

            setState(() => _currentColorChangeIndex = position);
          });

    controller.forward();
  }

  Widget _mainRow() {
    List<Widget> children = [];

    for (Color color in mainColors) {
      children.add(
        new GestureDetector(
          child: new Container(
            width: _kColorBoxSize,
            height: _kColorBoxSize,
            decoration: new BoxDecoration(
              color: color,
            ),
          ),
          onTap: () => _mainColorSelected(color),
        ),
      );
    }

    return new Row(children: children);
  }

  void _onColorSelected(Color color) {
    if (widget.onColor != null) widget.onColor(color);
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> currentColorList = colorList[mainColors[_lastKnownColorIndex]]
        .sublist(0, _currentColorChangeIndex);

    _lastColorList.replaceRange(0, _currentColorChangeIndex, currentColorList);

    List<Widget> children = <Widget>[];
    for (Color color in _lastColorList) {
      List<Widget> stackChildren = <Widget>[
        new InkWell(
          child: new Container(
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: color,
              borderRadius: new BorderRadius.all(
                new Radius.circular(2.0),
              ),
              border: new Border.all(color: Colors.black12),
            ),
          ),
        ),
      ];

      if (color == _selectedColor) {
        stackChildren.add(
          new Container(
            decoration: new BoxDecoration(
                shape: BoxShape.circle, color: Colors.white70),
            child: new Icon(Icons.check),
            margin: new EdgeInsets.all(4.0),
          ),
        );
      }

      children.add(
        new GestureDetector(
          child: new Stack(
            children: stackChildren,
            alignment: new AlignmentDirectional(1.0, 1.0),
          ),
          onTap: () => _onColorSelected(color),
        ),
      );
    }

    MainColorsBox mainColorBox = new MainColorsBox(child: _mainRow());
    return new Container(
      width: kWidgetWidth,
      alignment: Alignment.center,
      height: kWidgetHeight,
      child: new Material(
        elevation: widget.elevation ?? 8.0,
        type: widget.type ?? MaterialType.card,
        child: new Column(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(_kMarginSize),
              child: new Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  mainColorBox,
                  new Positioned(
                    top: -_frameBorderWidth,
                    left: _dragPosition - _frameBorderWidth,
                    child: new GestureDetector(
                      onHorizontalDragUpdate: (details) {
                        _onDragUpdate(details, mainColorBox.renderObject);
                      },
                      onHorizontalDragEnd: _onDragEnd,
                      child: new Material(
                        elevation: 8.0,
                        color: new Color(0x00000000),
                        child: new Image.asset(
                          "assets/images/color_picker_placer.png",
                          width: _frameWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: mainColors.length * _kColorBoxSize,
              margin: new EdgeInsets.all(16.0),
              child: new GridView.count(
                shrinkWrap: true,
                children: children,
                mainAxisSpacing: _kMainAxisSpacing,
                crossAxisSpacing: _kCrossAxisSpacing,
                childAspectRatio: _kSizeRatio,
                crossAxisCount: _kCrossAxisCount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// We need access to the render object to convert the global position into
/// local position.
class MainColorsBox extends SingleChildRenderObjectWidget {
  MainColorsBox({Key key, Widget child}) : super(key: key, child: child);

  RenderFittedBox renderObject;

  @override
  RenderFittedBox createRenderObject(BuildContext context) {
    renderObject = new RenderFittedBox(
      fit: BoxFit.contain,
      alignment: Alignment.center,
      textDirection: Directionality.of(context),
    );

    return renderObject;
  }

  @override
  void updateRenderObject(BuildContext context, RenderFittedBox renderObject) {
    renderObject
      ..fit = BoxFit.contain
      ..alignment = Alignment.center
      ..textDirection = Directionality.of(context);
    this.renderObject = renderObject;
  }
}
