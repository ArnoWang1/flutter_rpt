# flutter_rpt

A Flutter package provide responsive layout unit, depend on device width calculate responsive width.

## Getting Started

##### At first
Use in flutter, we should init in main.dart, like this:
```dart
void main() {
    ResponsiveUnit.init();
	// or designer use width is not 375,
	// ResponsiveUnit.init(standardPt = 750);
    runApp()......;
}
```

##### Then use responsive unit, this project have 3 unit
1. rpt
This unit is responsive pt unit, generally our ui designer use 375pt, this unit will transfer pt to px, such as 375pt will be 750px on 750px width device.
Use in flutter like this:
```dart
Container(
    color: Colors.red,
    width: 100.rpt,
    height: 100.rpt,
)
```

2. vw
This unit like css width 100%, percentage device width.
Use in flutter like this:
```dart
Container(
    color: Colors.red,
    width: 100.vw,
    height: 100.rpt,
)
```

3. vh
This unit like css height 100%, percentage device height.
Use in flutter like this:
```dart
Container(
    color: Colors.red,
    width: 100.rpt,
    height: 100.vh,
)
```
