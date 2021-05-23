import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmanWidget extends StatefulWidget {
  AmanWidget({Key key}) : super(key: key);

  @override
  _AmanWidgetState createState() => _AmanWidgetState();
}

class _AmanWidgetState extends State<AmanWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
      child: TextFormField(
        controller: textController,
        obscureText: false,
        decoration: InputDecoration(
          hintText: '[Some hint text...]',
          hintStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
          ),
        ),
        style: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
