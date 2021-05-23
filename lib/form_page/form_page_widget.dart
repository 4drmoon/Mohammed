import '../flutter_flow/flutter_flow_theme.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPageWidget extends StatefulWidget {
  FormPageWidget({Key key}) : super(key: key);

  @override
  _FormPageWidgetState createState() => _FormPageWidgetState();
}

class _FormPageWidgetState extends State<FormPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePageWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 8,
      ),
    );
  }
}
