import '/backend/backend.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/componentes/publicacion/publicacion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'learn_model.dart';
export 'learn_model.dart';

class LearnWidget extends StatefulWidget {
  const LearnWidget({super.key});

  static String routeName = 'Learn';
  static String routePath = '/learn';

  @override
  State<LearnWidget> createState() => _LearnWidgetState();
}

class _LearnWidgetState extends State<LearnWidget> {
  late LearnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearnModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<ArticulosRecord>>(
                      stream: queryArticulosRecord(
                        queryBuilder: (articulosRecord) =>
                            articulosRecord.orderBy('createdAt'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ArticulosRecord> columnArticulosRecordList =
                            snapshot.data!;

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children:
                                List.generate(columnArticulosRecordList.length,
                                        (columnIndex) {
                              final columnArticulosRecord =
                                  columnArticulosRecordList[columnIndex];
                              return PublicacionWidget(
                                key: Key(
                                    'Keyckr_${columnIndex}_of_${columnArticulosRecordList.length}'),
                                publicacion: columnArticulosRecord,
                              );
                            })
                                    .divide(SizedBox(height: 15.0))
                                    .around(SizedBox(height: 15.0)),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarWidget(
                  selectedPage: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
