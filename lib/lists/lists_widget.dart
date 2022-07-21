import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListsWidget extends StatefulWidget {
  const ListsWidget({Key key}) : super(key: key);

  @override
  _ListsWidgetState createState() => _ListsWidgetState();
}

class _ListsWidgetState extends State<ListsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed('createnew');
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Activity',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF090F13),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 24, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'All Activities are listed here',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            StreamBuilder<List<AlarmsRecord>>(
              stream: queryAlarmsRecord(
                queryBuilder: (alarmsRecord) => alarmsRecord.orderBy('start'),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<AlarmsRecord> listViewAlarmsRecordList = snapshot.data;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewAlarmsRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewAlarmsRecord =
                        listViewAlarmsRecordList[listViewIndex];
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'viewdetails',
                            queryParams: {
                              'desc': serializeParam(
                                  listViewAlarmsRecord.description,
                                  ParamType.String),
                              'name': serializeParam(
                                  listViewAlarmsRecord.name, ParamType.String),
                              'starttime': serializeParam(
                                  listViewAlarmsRecord.start, ParamType.String),
                              'endtime': serializeParam(
                                  listViewAlarmsRecord.end, ParamType.String),
                              'dayname': serializeParam(
                                  listViewAlarmsRecord.day, ParamType.String),
                              'dociD': serializeParam(
                                  listViewAlarmsRecord.reference,
                                  ParamType.DocumentReference),
                            }.withoutNulls,
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Container(
                                  width: 2,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listViewAlarmsRecord.day,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Start time : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        Text(
                                          listViewAlarmsRecord.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'End time : ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        Text(
                                          listViewAlarmsRecord.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            'https://png.pngtree.com/png-vector/20190726/ourlarge/pngtree-siren-alarm-icon-png-image_1609902.jpg',
                                          ),
                                        ),
                                        Text(
                                          listViewAlarmsRecord.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
