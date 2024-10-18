import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'pickupaddress_model.dart';
export 'pickupaddress_model.dart';

class PickupaddressWidget extends StatefulWidget {
  const PickupaddressWidget({super.key});

  @override
  State<PickupaddressWidget> createState() => _PickupaddressWidgetState();
}

class _PickupaddressWidgetState extends State<PickupaddressWidget> {
  late PickupaddressModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickupaddressModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 758.0,
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        50.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'yk07j9e5' /* Enter the Address */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 241.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          FlutterFlowGoogleMap(
                                            controller:
                                            _model.googleMapsController,
                                            onCameraIdle: (latLng) => _model
                                                .googleMapsCenter = latLng,
                                            initialLocation: _model
                                                .googleMapsCenter ??=
                                            const LatLng(13.106061, -59.613158),
                                            markerColor:
                                            GoogleMarkerColor.violet,
                                            mapType: MapType.normal,
                                            style: GoogleMapStyle.dark,
                                            initialZoom: 14.0,
                                            allowInteraction: true,
                                            allowZoom: true,
                                            showZoomControls: true,
                                            showLocation: true,
                                            showCompass: false,
                                            showMapToolbar: false,
                                            showTraffic: false,
                                            centerMapOnMarkerTap: true,
                                          ),
                                          Align(
                                            alignment:
                                            const AlignmentDirectional(-1.0, 1.0),
                                            child: PointerInterceptor(
                                              intercepting: isWeb,
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    10.0, 0.0, 0.0, 10.0),
                                                child: Container(
                                                  width: 316.0,
                                                  height: 51.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                    const BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            10.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Icon(
                                                          Icons.location_on,
                                                          color:
                                                          Color(0xFFEA6E0E),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                            context)
                                                            .getText(
                                                          '3v2a916f' /* 48, Al Majarrah Street Hadbat ... */,
                                                        ),
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Readex Pro',
                                                          letterSpacing:
                                                          0.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            40.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                              context)
                                                              .getText(
                                                            '2thuuxj9' /* Edit */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Readex Pro',
                                                            color: const Color(
                                                                0xFFEA6E0E),
                                                            letterSpacing:
                                                            0.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 10.0, 20.0, 0.0),
                                            child: SizedBox(
                                              width: 294.0,
                                              child: TextFormField(
                                                controller:
                                                _model.textController1,
                                                focusNode:
                                                _model.textFieldFocusNode1,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    '751mafbf' /* Enter Address */,
                                                  ),
                                                  labelStyle: FlutterFlowTheme
                                                      .of(context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily: 'Jaldi',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .primaryText,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                                  hintStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                                  enabledBorder:
                                                  const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFD2D2D2),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(5.0),
                                                      bottomRight:
                                                      Radius.circular(5.0),
                                                      topLeft:
                                                      Radius.circular(5.0),
                                                      topRight:
                                                      Radius.circular(5.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                  const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(5.0),
                                                      bottomRight:
                                                      Radius.circular(5.0),
                                                      topLeft:
                                                      Radius.circular(5.0),
                                                      topRight:
                                                      Radius.circular(5.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    const BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(5.0),
                                                      bottomRight:
                                                      Radius.circular(5.0),
                                                      topLeft:
                                                      Radius.circular(5.0),
                                                      topRight:
                                                      Radius.circular(5.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                  OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                    const BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(5.0),
                                                      bottomRight:
                                                      Radius.circular(5.0),
                                                      topLeft:
                                                      Radius.circular(5.0),
                                                      topRight:
                                                      Radius.circular(5.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                ),
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily:
                                                  'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                                maxLines: 2,
                                                cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 10.0, 20.0, 0.0),
                                          child: SizedBox(
                                            width: 294.0,
                                            child: TextFormField(
                                              controller:
                                              _model.textController2,
                                              focusNode:
                                              _model.textFieldFocusNode2,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'scmfm2y1' /* Landmark (Optional) */,
                                                ),
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily: 'Jaldi',
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily:
                                                  'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                                enabledBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD2D2D2),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                              maxLines: 2,
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 10.0, 20.0, 0.0),
                                          child: SizedBox(
                                            width: 294.0,
                                            child: TextFormField(
                                              controller:
                                              _model.textController3,
                                              focusNode:
                                              _model.textFieldFocusNode3,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily:
                                                  'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                                hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gq7wk5zw' /* Sender’s Name (Optional) */,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily: 'Jaldi',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                ),
                                                enabledBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD2D2D2),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                              maxLines: 2,
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              validator: _model
                                                  .textController3Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              20.0, 10.0, 20.0, 0.0),
                                          child: SizedBox(
                                            width: 294.0,
                                            child: TextFormField(
                                              controller:
                                              _model.textController4,
                                              focusNode:
                                              _model.textFieldFocusNode4,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily:
                                                  'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                                hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'h5hrfow0' /* Sender’s Mobile number (Option... */,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                  fontFamily: 'Jaldi',
                                                  color: Colors.black,
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                                enabledBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD2D2D2),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedBorder:
                                                const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                  const BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(5.0),
                                                    bottomRight:
                                                    Radius.circular(5.0),
                                                    topLeft:
                                                    Radius.circular(5.0),
                                                    topRight:
                                                    Radius.circular(5.0),
                                                  ),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily:
                                                'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                              maxLines: 2,
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                              validator: _model
                                                  .textController4Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.check_box_outline_blank,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 17.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kk506vhf' /* Save to addresses */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Jaldi',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color:
                                  FlutterFlowTheme.of(context).primaryText,
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
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        context.pushNamed('homepage08');
                      },
                      text: FFLocalizations.of(context).getText(
                        'w27tl67v' /* Submit */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 44.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFFDA900),
                        textStyle:
                        FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Jaldi',
                          color: Colors.white,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
