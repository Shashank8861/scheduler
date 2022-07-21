import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatenewWidget extends StatefulWidget {
  const CreatenewWidget({Key key}) : super(key: key);

  @override
  _CreatenewWidgetState createState() => _CreatenewWidgetState();
}

class _CreatenewWidgetState extends State<CreatenewWidget> {
  DateTime datePicked1;
  String teamSelectValue;
  TextEditingController shortBioController;
  TextEditingController userNameController;
  DateTime datePicked2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    shortBioController = TextEditingController();
    userNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Create Task',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Outfit',
                color: Color(0xFF14181B),
                fontSize: 28,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: userNameController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Task Name',
                          labelStyle:
                              FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF14181B),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: shortBioController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter description here...',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF14181B),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday'
                        ],
                        onChanged: (val) =>
                            setState(() => teamSelectValue = val),
                        width: double.infinity,
                        height: 60,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Select the day',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF57636C),
                          size: 15,
                        ),
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Color(0xFFF1F4F8),
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Start Time',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await DatePicker.showTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked1 = date);
                              },
                              currentTime: FFAppState().sdkvjbosjdbv,
                            );

                            setState(
                                () => FFAppState().sdkvjbosjdbv = datePicked1);
                          },
                          text: dateTimeFormat('jm', FFAppState().sdkvjbosjdbv),
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).customColor4,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'End Time',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await DatePicker.showTimePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked2 = date);
                              },
                              currentTime: FFAppState().endtime,
                            );

                            setState(() => FFAppState().endtime = datePicked2);
                          },
                          text: dateTimeFormat('jm', FFAppState().endtime),
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).customColor4,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final alarmsCreateData = createAlarmsRecordData(
                        name: userNameController.text,
                        start: dateTimeFormat('jm', datePicked1),
                        end: dateTimeFormat('jm', datePicked2),
                        day: teamSelectValue,
                        description: shortBioController.text,
                        userRef: currentUserUid,
                      );
                      await AlarmsRecord.collection.doc().set(alarmsCreateData);
                      context.pop();
                      triggerPushNotification(
                        notificationTitle: userNameController.text,
                        notificationText: datePicked1.toString(),
                        scheduledTime: datePicked1,
                        notificationSound: 'default',
                        userRefs: [currentUserReference],
                        initialPageName: 'lists',
                        parameterData: {},
                      );
                    },
                    text: 'Create Task',
                    options: FFButtonOptions(
                      width: 270,
                      height: 50,
                      color: Color(0xFF4B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle1.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
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
