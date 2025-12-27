import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'loadinpage_model.dart';
export 'loadinpage_model.dart';

class LoadinpageWidget extends StatefulWidget {
  const LoadinpageWidget({
    super.key,
    required this.id,
  });

  final String? id;

  static String routeName = 'loadinpage';
  static String routePath = '/loadinpage';

  @override
  State<LoadinpageWidget> createState() => _LoadinpageWidgetState();
}

class _LoadinpageWidgetState extends State<LoadinpageWidget>
    with TickerProviderStateMixin {
  late LoadinpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadinpageModel());

    // Precache assets to prevent flickering
    _precacheAssets();

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.id != null && widget.id != '') {
        // New user - create profile with onboarding_completed = false
        try {
          await ProfilesTable().insert({
            'id': currentUserUid,
            'email': currentUserEmail,
            'onboarding_completed': false,
          });
        } catch (e) {
          // Profile might already exist, ignore error
        }
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(3.0, 3.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.6, 0.6),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 350.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 30.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  Future<void> _precacheAssets() async {
    // Precache logo image
    try {
      await precacheImage(
        const AssetImage('assets/images/app_launcher_icon.png'),
        context,
      );
    } catch (e) {
      debugPrint('❌ Error preloading logo: $e');
    }

    // Precache Lottie animations used throughout the app
    try {
      await AssetLottie('assets/jsons/Rocket_in_space.json').load();
      await AssetLottie('assets/jsons/Fire.json').load();
      await AssetLottie('assets/jsons/Confetti.json').load();
      await AssetLottie('assets/jsons/Businessman flies up with rocket.json').load();
      await AssetLottie('assets/jsons/black rainbow cat.json').load();

      debugPrint('✅ All Lottie animations preloaded successfully');
    } catch (e) {
      debugPrint('❌ Error preloading Lottie: $e');
    }
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProfilesRow>>(
      future: ProfilesTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProfilesRow> loadinpageProfilesRowList = snapshot.data!;

        final loadinpageProfilesRow = loadinpageProfilesRowList.isNotEmpty
            ? loadinpageProfilesRowList.first
            : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: PopScope(
            canPop: false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: const Color(0xFF0F1419),
              body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF1A1F36),
                      Color(0xFF0F1419),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    // Check if user has a profile AND has completed onboarding
                    if (loadinpageProfilesRow != null &&
                        loadinpageProfilesRow.onboardingCompleted == true) {
                      // Existing user who completed onboarding - go to main home
                      context.pushNamed(HomeWidget.routeName);
                    } else if (loadinpageProfilesRow != null &&
                        loadinpageProfilesRow.username != null &&
                        loadinpageProfilesRow.username!.isNotEmpty) {
                      // Legacy user with username but no onboarding_completed flag - go to main home
                      context.pushNamed(HomeWidget.routeName);
                    } else {
                      // New user OR user who hasn't completed onboarding - show onboarding
                      context.pushNamed(OnboardingWidget.routeName);
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 500.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF0F1419),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0x661A1F36), Color(0xCC0F1419)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF2A2E3A),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/Just_the_logo.png',
                                      width: 100.0,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 44.0, 0.0, 0.0),
                                    child: Text(
                                      'Welcome to \nUniQuest!',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Feather',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation']!),
                                  ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation']!),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 100.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    // Check if user has a profile AND has completed onboarding
                                    if (loadinpageProfilesRow != null &&
                                        loadinpageProfilesRow
                                                .onboardingCompleted ==
                                            true) {
                                      // Existing user who completed onboarding - go to main home
                                      context.pushNamed(HomeWidget.routeName);
                                    } else if (loadinpageProfilesRow != null &&
                                        loadinpageProfilesRow.username !=
                                            null &&
                                        loadinpageProfilesRow
                                            .username!.isNotEmpty) {
                                      // Legacy user with username but no onboarding_completed flag - go to main home
                                      context.pushNamed(HomeWidget.routeName);
                                    } else {
                                      // New user OR user who hasn't completed onboarding - show onboarding
                                      context.pushNamed(
                                          OnboardingWidget.routeName);
                                    }
                                  },
                                  text: 'Continue',
                                  options: FFButtonOptions(
                                    height: 48.0,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFFFBD59),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 1.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
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
              ),
            ),
          ),
        );
      },
    );
  }
}
