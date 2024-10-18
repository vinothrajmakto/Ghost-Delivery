import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'homepage09_model.dart';
export 'homepage09_model.dart';

class Homepage09Widget extends StatefulWidget {
  const Homepage09Widget({super.key});

  @override
  State<Homepage09Widget> createState() => _Homepage09WidgetState();
}

class _Homepage09WidgetState extends State<Homepage09Widget> {
  late Homepage09Model _model;
  bool _isLoading = true; // Define a loading state
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Homepage09Model());

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

  Future<bool> _onWillPop() async {
    // Return false to prevent back navigation
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFFDA900),
          body: SafeArea(
            top: true,
            child: _isLoading // If loading, show CircularProgressIndicator
                ? Center(
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            )
                :SizedBox(
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 25.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 53.0,
                                      height: 53.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF1E1E1E),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.density_medium,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 55.0, 20.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 142.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '7x3he5h6' /* Delivery anything, anywhere */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '5lebftu9' /* Sit back and relax, we will do... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 9.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30.0, 35.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        context.pushNamed('homepage08');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '7vlw381h' /* Select Pickup and Delivery Loc... */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 299.0,
                                        height: 42.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFF596273),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        elevation: 0.0,
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 268.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFEDEDED),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'z69d6cnd' /* Hassle free delivery  */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: 252.0,
                                            height: 210.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF014F48),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(15.0),
                                                bottomRight:
                                                Radius.circular(15.0),
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xFF263E3B),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: 252.0,
                                            height: 210.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF014F48),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(15.0),
                                                bottomRight:
                                                Radius.circular(15.0),
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xFF263E3B),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: 252.0,
                                            height: 210.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF014F48),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(15.0),
                                                bottomRight:
                                                Radius.circular(15.0),
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xFF263E3B),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 20.0, 0.0),
                                          child: Container(
                                            width: 252.0,
                                            height: 210.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF014F48),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(15.0),
                                                bottomRight:
                                                Radius.circular(15.0),
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xFF263E3B),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 5.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
