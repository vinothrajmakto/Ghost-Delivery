import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'deliveryaddress_model.dart';
export 'deliveryaddress_model.dart';

class DeliveryaddressWidget extends StatefulWidget {
  const DeliveryaddressWidget({super.key});

  @override
  State<DeliveryaddressWidget> createState() => _DeliveryaddressWidgetState();
}

class _DeliveryaddressWidgetState extends State<DeliveryaddressWidget> {
  late DeliveryaddressModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryaddressModel());

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
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 810.0,
                        child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          50.0, 11.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ipipya17' /* Enter the Address */,
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
                                        0.0, 20.0, 0.0, 0.0),
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
                                              allowZoom: false,
                                              showZoomControls: false,
                                              showLocation: false,
                                              showCompass: false,
                                              showMapToolbar: false,
                                              showTraffic: false,
                                              centerMapOnMarkerTap: true,
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 1.0),
                                              child: PointerInterceptor(
                                                intercepting: isWeb,
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      10.0, 0.0, 0.0, 10.0),
                                                  child: Container(
                                                    width: 360.0,
                                                    height: 51.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                      const BorderRadius.only(
                                                        bottomLeft:
                                                        Radius.circular(
                                                            10.0),
                                                        bottomRight:
                                                        Radius.circular(
                                                            10.0),
                                                        topLeft:
                                                        Radius.circular(
                                                            10.0),
                                                        topRight:
                                                        Radius.circular(
                                                            10.0),
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
                                                            color: Color(
                                                                0xFFFDA900),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                              5.0,
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                context)
                                                                .getText(
                                                              'pl234978' /* 4014 Way CBD */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                .of(context)
                                                                .bodyMedium
                                                                .override(
                                                              fontFamily:
                                                              'Jaldi',
                                                              fontSize:
                                                              16.0,
                                                              letterSpacing:
                                                              0.0,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                          const AlignmentDirectional(
                                                              3.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                180.0,
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                  context)
                                                                  .getText(
                                                                'glji3jvm' /* Edit */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                'Readex Pro',
                                                                color: const Color(
                                                                    0xFFFDA900),
                                                                letterSpacing:
                                                                0.0,
                                                              ),
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 20.0, 0.0),
                                            child: SizedBox(
                                              width: double.infinity,
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
                                                    'l439aom8' /* Enter Address */,
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
                                                    fontSize: 11.0,
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 20.0, 0.0),
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller:
                                                _model.textController2,
                                                focusNode:
                                                _model.textFieldFocusNode2,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    '8c9l1yoe' /* Landmark (Optional) */,
                                                  ),
                                                  labelStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily: 'Jaldi',
                                                    color: Colors.black,
                                                    fontSize: 11.0,
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 20.0, 0.0),
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
                                                  labelText: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    'xg4y9pg6' /* Recepient’s Name (Optional) */,
                                                  ),
                                                  labelStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily: 'Jaldi',
                                                    fontSize: 11.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                                  hintStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                20.0, 0.0, 20.0, 0.0),
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
                                                  labelText: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    '51ypkaku' /* Recepient’s Mobile number (Opt... */,
                                                  ),
                                                  labelStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    fontFamily: 'Jaldi',
                                                    fontSize: 11.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                                  hintStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                      Radius.circular(10.0),
                                                      bottomRight:
                                                      Radius.circular(10.0),
                                                      topLeft:
                                                      Radius.circular(10.0),
                                                      topRight:
                                                      Radius.circular(10.0),
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
                                                    .textController4Validator
                                                    .asValidator(context),
                                              ),
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
                              child: Container(
                                width: double.infinity,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 0.1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 15.0, 15.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      context.pushNamed('homepage08');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'hmvt1dp6' /* Submit */,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 44.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFFFDA900),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Jaldi',
                                        color: Colors.white,
                                        fontSize: 18.0,
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
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -0.97),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
