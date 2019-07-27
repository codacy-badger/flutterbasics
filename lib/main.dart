import 'package:flutter/material.dart';

import 'startup_namer/StartupNamer.dart';
import 'test_drive/TestDrive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: TestDrive(),
      home: StartupNamer(),
      
      //home: ScaffoldDemo(),home: AppbarDemo(),home: BottomNavigationBarDemo(),home: TabBarDemo(),home: DrawerDemo(),home: SliverAppBarDemo(),home: RaisedButtonDemo(),home: FloatingActionButtonDemo(),home: FlatButtonDemo(),home: IconButtonDemo(),home: DropdownButtonDemo(),home: PopupMenuButtonDemo(),home: TextFieldDemo(),home: CheckboxDemo(),home: RadioDemo(),home: SwitchDemo(),home: SliderDemo(),home: DatePickerDemo(),home: TimePickerDemo(),home: SimpleDialogDemo(),home: AlertDialogDemo(),home: BottomSheetDemo(),home: ExpansionPanelDemo(),home: SnackBarDemo(),home: ImageDemo(),home: IconDemo(),home: ChipDemo(),home: TooltipDemo(),home: DataTableDemo(),home: CardDemo(),home: LinearProgressIndicatorDemo(),home: CircularProgressIndicatorDemo(),home: GridViewDemo(),home: ListTileDemo(),home: StepperDemo(),home: DividerDemo(),
    );
  }
}