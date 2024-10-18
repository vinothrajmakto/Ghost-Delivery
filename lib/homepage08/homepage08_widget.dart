import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'homepage08_model.dart';
export 'homepage08_model.dart';

class Homepage08Widget extends StatefulWidget {
  const Homepage08Widget({super.key});

  @override
  State<Homepage08Widget> createState() => _Homepage08WidgetState();
}

class _Homepage08WidgetState extends State<Homepage08Widget> {
  late Homepage08Model _model;
  bool _isLoading = true; // Define a loading state
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> dropLocationButtons = []; // List to store drop location buttons

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Homepage08Model());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    // Add an initial button (optional)
    dropLocationButtons.add(_buildDropLocationButton());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          _isLoading = false; // Set loading to false once done
        });
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // Method to create a drop location button
  Widget _buildDropLocationButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Navigate to the Order01 page
          context.pushNamed('Order01');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // Remove the default blue background
          elevation: 0, // Remove any elevation for a flat button look
          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0), // Adjust padding as needed
          splashFactory: NoSplash.splashFactory, // Remove gray color on click
          fixedSize: Size(double.infinity, 44), // Set a fixed width and height for the button
        ),
        child: Text(
          'Select Drop Location',
          style: FlutterFlowTheme.of(context).titleSmall.override(
            fontFamily: 'Jaldi', // Set the font family
            color: FlutterFlowTheme.of(context).primaryText, // Set the text color
            fontSize: 12, // Set the font size
            letterSpacing: 0.0, // Set letter spacing
            fontWeight: FontWeight.normal, // Set font weight
          ),
        ),

      ),
    );
  }

  // Method to add a new drop location button to the list
  void _addNewDropLocationButton() {
    setState(() {
      dropLocationButtons.add(_buildDropLocationButton());
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFDA900),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: _isLoading // If loading, show CircularProgressIndicator
              ? Center(
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary,
            ),
          )
              :Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.asset(
                        'assets/images/H_symbol.png',
                      ).image,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 20, 0, 0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.06, 0),
                                child: Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Container(
                                    width: 53,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Icon(
                                        Icons.density_medium,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),//below padding start the stark portion
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0), // Padding for the container
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFD2D2D2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            // child: SingleChildScrollView( // Make the entire area scrollable
                            child: Column(
                              children: [
                                // Pickup Location Button with Icon and Line
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.my_location_outlined,
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          size: 24, // Size of the icon
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30, // Length of the line connecting pickup icon to button
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFD683D), // Color of the line
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10), // Space between icon and line
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 50, 5), // Added right padding to match button lengths
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('Pickuppoint');
                                          },
                                          text: FFLocalizations.of(context).getText(
                                            'q68gm2kh' /* Select Pickup Location */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 52,
                                            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                            iconPadding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Jaldi',
                                              color: Colors.black,
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            elevation: 0,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // Drop Location Button Row with Icon and Plus Button
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          size: 24, // Size of the icon
                                        ),
                                        Container(
                                          width: 2,
                                          height: 30, // Length of the line connecting drop icon to button
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFD683D), // Color of the line
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10), // Space between icon and line
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 5), // Added right padding to match button lengths
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('Order01');
                                          },
                                          text: FFLocalizations.of(context).getText(
                                            'tcdvpuht' /* Select Drop Location */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 52,
                                            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                                            iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Jaldi',
                                              color: FlutterFlowTheme.of(context).primaryText,
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            elevation: 0,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Plus Button
                                    IconButton(
                                      icon: Icon(
                                        Icons.add_circle_outline_rounded,
                                        color: FlutterFlowTheme.of(context).primaryText,
                                        size: 24,
                                      ),
                                      onPressed: _addNewDropLocationButton,
                                    ),
                                  ],
                                ),

                                // Display all drop location buttons inside the column with plus buttons
                                ...dropLocationButtons.map((button) {
                                  return Row(
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.location_pin, // Adding icon for each drop location button
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            size: 24, // Size of the icon
                                          ),
                                          Container(
                                            width: 2,
                                            height: 30, // Length of the line for drop location
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFD683D), // Color of the line
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 10), // Space between icon and line
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 10, 5), // Padding for each drop location button
                                          child: Draggable<String>(
                                            data: "Drop Location", // Data to pass when dragging
                                            feedback: Material(
                                              child: Container(
                                                width: double.infinity,
                                                height: 52,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Select Drop Location',
                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                      fontFamily: 'Jaldi',
                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                      fontSize: 12,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            childWhenDragging: Container(), // Optional widget to show when dragging
                                            child: Container(
                                              width: double.infinity,
                                              height: 52,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                borderRadius: BorderRadius.circular(8), // Same radius as other buttons
                                              ),
                                              child: button, // Use the button widget
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10), // Space between button and plus button
                                      IconButton(
                                        icon: Icon(
                                          Icons.add_circle_outline_rounded,
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          size: 24,
                                        ),
                                        onPressed: _addNewDropLocationButton, // Call to add a new drop location
                                      ),
                                    ],
                                  );
                                }).toList(),
                              ],
                            ),
                            // ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'h8y2gvsz' /* Dimension */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Jaldi',
                                  fontSize: 19,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Container(
                            width: double.infinity,
                            height: 63,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.diceD6,
                                    color: Color(0xFFD2D2D2),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Container(
                                      width: 200,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                          hintText:
                                          FFLocalizations.of(context).getText(
                                            'wompoitc' /* 0 */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: FlutterFlowTheme.of(context)
                                                  .error,
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                        textAlign: TextAlign.start,
                                        cursorColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        validator: _model.textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7gcb6ce5' /* Kg */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Jaldi',
                                      color: Color(0xFF191D31),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 2, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'wzvxya3q' /* Choose Vehicle type */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Jaldi',
                                  fontSize: 19,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              FFLocalizations.of(context).getText(
                                '89v5t30v' /* Two Wheeler */,
                              ),
                              FFLocalizations.of(context).getText(
                                'fhll2fr9' /* Car */,
                              ),
                              FFLocalizations.of(context).getText(
                                'lmb1tb4p' /* Truck */,
                              )
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropDownValue = val),
                            width: double.infinity,
                            height: 59,
                            textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24,
                            ),
                            fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 8,
                            margin: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 50, 15, 10),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Citypage');
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'ds4gvinx' /* Submit */,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 48,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFF183835),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Jaldi',
                                      color: Colors.white,
                                      fontSize: 17,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Align(
                //   alignment: AlignmentDirectional(0, 1),
                //   child: Padding(
                //     padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                //     child: FFButtonWidget(
                //       onPressed: () async {
                //         context.pushNamed('Citypage');
                //       },
                //       text: FFLocalizations.of(context).getText(
                //         'ds4gvinx' /* Submit */,
                //       ),
                //       options: FFButtonOptions(
                //         width: double.infinity,
                //         height: 44,
                //         padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                //         iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                //         color: Color(0xFF183835),
                //         textStyle:
                //         FlutterFlowTheme.of(context).titleSmall.override(
                //           fontFamily: 'Jaldi',
                //           color: Colors.white,
                //           fontSize: 17,
                //           letterSpacing: 0.0,
                //           fontWeight: FontWeight.normal,
                //         ),
                //         elevation: 0,
                //         borderSide: BorderSide(
                //           color: Colors.transparent,
                //         ),
                //         borderRadius: BorderRadius.circular(6),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}