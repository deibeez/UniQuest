import '/backend/supabase/supabase.dart';
import '/components/leader_div/leader_div_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'leaderboard_model.dart';
export 'leaderboard_model.dart';

class LeaderboardWidget extends StatefulWidget {
  const LeaderboardWidget({super.key});

  static String routeName = 'leaderboard';
  static String routePath = '/leaderboard';

  @override
  State<LeaderboardWidget> createState() => _LeaderboardWidgetState();
}

class _LeaderboardWidgetState extends State<LeaderboardWidget>
    with TickerProviderStateMixin {
  late LeaderboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaderboardModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        backgroundColor: const Color(0xFF1E1E1E),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1E1E1E),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 0.0, 0.0),
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
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.01, -0.04),
                          child: Text(
                            'LEADERBOARD',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Feather',
                                  fontSize: 34.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 5.29),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              'The rankings are based on the amount of XP each users have.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Feather',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 130.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Feather',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        tabs: [
                          const Tab(
                            text: 'Diamond',
                            icon: Icon(
                              Icons.diamond_rounded,
                              color: Color(0xFF8DE8FF),
                            ),
                          ),
                          const Tab(
                            text: 'Platinum',
                            icon: FaIcon(
                              FontAwesomeIcons.star,
                              color: Color(0xFFD9D9D9),
                            ),
                          ),
                          const Tab(
                            text: 'Gold',
                            icon: FaIcon(
                              FontAwesomeIcons.crown,
                              color: Color(0xFFDCD118),
                            ),
                          ),
                          Tab(
                            text: 'Silver',
                            icon: FaIcon(
                              FontAwesomeIcons.medal,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          const Tab(
                            text: 'Bronze',
                            icon: FaIcon(
                              FontAwesomeIcons.solidCopyright,
                              color: Color(0xFFCD7F32),
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {},
                            () async {},
                            () async {},
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: FutureBuilder<
                                          List<LeaderboardViewRow>>(
                                        future:
                                            LeaderboardViewTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'rank_text',
                                                'Diamond',
                                              )
                                              .order('total_points'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderboardViewRow>
                                              listViewLeaderboardViewRowList =
                                              snapshot.data!;

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewLeaderboardViewRowList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 5.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewLeaderboardViewRow =
                                                  listViewLeaderboardViewRowList[
                                                      listViewIndex];
                                              return wrapWithModel(
                                                model: _model.leaderDivModels1
                                                    .getModel(
                                                  listViewLeaderboardViewRow
                                                      .id!,
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LeaderDivWidget(
                                                  key: Key(
                                                    'Key8bm_${listViewLeaderboardViewRow.id!}',
                                                  ),
                                                  rank:
                                                      listViewLeaderboardViewRow
                                                          .numericRank,
                                                  username:
                                                      listViewLeaderboardViewRow
                                                          .username,
                                                  xp: listViewLeaderboardViewRow
                                                      .totalPoints,
                                                  profile:
                                                      listViewLeaderboardViewRow
                                                          .avatarUrl,
                                                  id: listViewLeaderboardViewRow
                                                      .id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: FutureBuilder<
                                          List<LeaderboardViewRow>>(
                                        future:
                                            LeaderboardViewTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'rank_text',
                                                'Platinum',
                                              )
                                              .order('total_points'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderboardViewRow>
                                              listViewLeaderboardViewRowList =
                                              snapshot.data!;

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewLeaderboardViewRowList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 5.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewLeaderboardViewRow =
                                                  listViewLeaderboardViewRowList[
                                                      listViewIndex];
                                              return wrapWithModel(
                                                model: _model.leaderDivModels2
                                                    .getModel(
                                                  listViewLeaderboardViewRow
                                                      .id!,
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LeaderDivWidget(
                                                  key: Key(
                                                    'Key6zc_${listViewLeaderboardViewRow.id!}',
                                                  ),
                                                  rank:
                                                      listViewLeaderboardViewRow
                                                          .numericRank,
                                                  username:
                                                      listViewLeaderboardViewRow
                                                          .username,
                                                  xp: listViewLeaderboardViewRow
                                                      .totalPoints,
                                                  profile:
                                                      listViewLeaderboardViewRow
                                                          .avatarUrl,
                                                  id: listViewLeaderboardViewRow
                                                      .id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: FutureBuilder<
                                          List<LeaderboardViewRow>>(
                                        future:
                                            LeaderboardViewTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'rank_text',
                                                'Gold',
                                              )
                                              .order('total_points'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderboardViewRow>
                                              listViewLeaderboardViewRowList =
                                              snapshot.data!;

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewLeaderboardViewRowList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 5.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewLeaderboardViewRow =
                                                  listViewLeaderboardViewRowList[
                                                      listViewIndex];
                                              return wrapWithModel(
                                                model: _model.leaderDivModels3
                                                    .getModel(
                                                  listViewLeaderboardViewRow
                                                      .id!,
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LeaderDivWidget(
                                                  key: Key(
                                                    'Keyi7s_${listViewLeaderboardViewRow.id!}',
                                                  ),
                                                  rank:
                                                      listViewLeaderboardViewRow
                                                          .numericRank,
                                                  username:
                                                      listViewLeaderboardViewRow
                                                          .username,
                                                  xp: listViewLeaderboardViewRow
                                                      .totalPoints,
                                                  profile:
                                                      listViewLeaderboardViewRow
                                                          .avatarUrl,
                                                  id: listViewLeaderboardViewRow
                                                      .id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: FutureBuilder<
                                          List<LeaderboardViewRow>>(
                                        future:
                                            LeaderboardViewTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'rank_text',
                                                'Silver',
                                              )
                                              .order('total_points'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderboardViewRow>
                                              listViewLeaderboardViewRowList =
                                              snapshot.data!;

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewLeaderboardViewRowList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 5.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewLeaderboardViewRow =
                                                  listViewLeaderboardViewRowList[
                                                      listViewIndex];
                                              return wrapWithModel(
                                                model: _model.leaderDivModels4
                                                    .getModel(
                                                  listViewLeaderboardViewRow
                                                      .id!,
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LeaderDivWidget(
                                                  key: Key(
                                                    'Keyko4_${listViewLeaderboardViewRow.id!}',
                                                  ),
                                                  rank:
                                                      listViewLeaderboardViewRow
                                                          .numericRank,
                                                  username:
                                                      listViewLeaderboardViewRow
                                                          .username,
                                                  xp: listViewLeaderboardViewRow
                                                      .totalPoints,
                                                  profile:
                                                      listViewLeaderboardViewRow
                                                          .avatarUrl,
                                                  id: listViewLeaderboardViewRow
                                                      .id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.3,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: FutureBuilder<
                                          List<LeaderboardViewRow>>(
                                        future:
                                            LeaderboardViewTable().queryRows(
                                          queryFn: (q) => q
                                              .eqOrNull(
                                                'rank_text',
                                                'Bronze',
                                              )
                                              .order('total_points'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<LeaderboardViewRow>
                                              listViewLeaderboardViewRowList =
                                              snapshot.data!;

                                          return ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewLeaderboardViewRowList
                                                    .length,
                                            separatorBuilder: (_, __) =>
                                                const SizedBox(height: 5.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewLeaderboardViewRow =
                                                  listViewLeaderboardViewRowList[
                                                      listViewIndex];
                                              return wrapWithModel(
                                                model: _model.leaderDivModels5
                                                    .getModel(
                                                  listViewLeaderboardViewRow
                                                      .id!,
                                                  listViewIndex,
                                                ),
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: LeaderDivWidget(
                                                  key: Key(
                                                    'Keysis_${listViewLeaderboardViewRow.id!}',
                                                  ),
                                                  rank:
                                                      listViewLeaderboardViewRow
                                                          .numericRank,
                                                  username:
                                                      listViewLeaderboardViewRow
                                                          .username,
                                                  xp: listViewLeaderboardViewRow
                                                      .totalPoints,
                                                  profile:
                                                      listViewLeaderboardViewRow
                                                          .avatarUrl,
                                                  id: listViewLeaderboardViewRow
                                                      .id!,
                                                ),
                                              );
                                            },
                                          );
                                        },
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
            ],
          ),
        ),
      ),
    );
  }
}
