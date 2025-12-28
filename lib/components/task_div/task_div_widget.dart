import '/backend/supabase/supabase.dart';
import '/components/edit_task/edit_task_widget.dart';
import '/components/menu_task/menu_task_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'task_div_model.dart';
export 'task_div_model.dart';

class TaskDivWidget extends StatefulWidget {
  const TaskDivWidget({
    super.key,
    this.tasks,
    this.taskid,
  });

  final TasksRow? tasks;
  final String? taskid;

  @override
  State<TaskDivWidget> createState() => _TaskDivWidgetState();
}

class _TaskDivWidgetState extends State<TaskDivWidget> {
  late TaskDivModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskDivModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: MenuTaskWidget(
                tasks: widget.tasks,
                tasksid: widget.taskid!,
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF3B424F),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              offset: const Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
                height: 130.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.95, -0.97),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            100.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: valueOrDefault<String>(
                            widget.tasks?.tags,
                            'tags',
                          ),
                          options: FFButtonOptions(
                            height: 23.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).accent1,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Feather',
                                  color: const Color(0xFF120687),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.9, -0.72),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Text(
                          (widget.tasks == null || widget.tasks!.title.trim().isEmpty)
                              ? '(Untitled Task)'
                              : widget.tasks!.title,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Feather',
                                color: (widget.tasks == null || widget.tasks!.title.trim().isEmpty)
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: (widget.tasks == null || widget.tasks!.title.trim().isEmpty)
                                    ? FontStyle.italic
                                    : FontStyle.normal,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.97, -0.3),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 55.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.tasks?.description,
                            'no notes',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Feather',
                                    color: const Color(0xFFA8A6A6),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.97, -0.88),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: EditTaskWidget(
                                  taskId: widget.tasks?.taskId,
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: FaIcon(
                          FontAwesomeIcons.edit,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 35.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.95, -0.97),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: valueOrDefault<String>(
                          widget.tasks?.priority,
                          'no priority',
                        ),
                        options: FFButtonOptions(
                          height: 23.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF8B3A3F),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Feather',
                                    color: const Color(0xFFFFFFFF),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFFD3D2D2),
              ),
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 70.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: widget.tasks!.status!,
                        icon: const Icon(
                          Icons.hourglass_empty_sharp,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 35.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: const Color(0xFFFFBD59),
                          color: const Color(0xFF2A2E3A),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Feather',
                                    color: const Color(0xFFFFBD59),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 60.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text:
                            dateTimeFormat("MMM, dd", widget.tasks!.dueDate),
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 35.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          color: const Color(0xFF343843),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Feather',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(24.0),
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
    );
  }
}
