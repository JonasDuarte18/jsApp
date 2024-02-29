import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'icon_selecao_model.dart';
export 'icon_selecao_model.dart';

class IconSelecaoWidget extends StatefulWidget {
  const IconSelecaoWidget({super.key});

  @override
  State<IconSelecaoWidget> createState() => _IconSelecaoWidgetState();
}

class _IconSelecaoWidgetState extends State<IconSelecaoWidget>
    with TickerProviderStateMixin {
  late IconSelecaoModel _model;

  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: const Offset(-9.0, 0.0),
          end: const Offset(7.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconSelecaoModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!.controller
            ..reset()
            ..repeat(reverse: true);
        }
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          await animationsMap['iconOnActionTriggerAnimation']!
              .controller
              .reverse();
        }
        if (animationsMap['iconOnActionTriggerAnimation'] != null) {
          animationsMap['iconOnActionTriggerAnimation']!.controller.stop();
        }
      }),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Icon(
          Icons.arrow_right_alt_outlined,
          color: _model.mouseRegionHovered? const Color(0xFF1C84FF)
              : const Color(0xFF99A1B7),
          size: 30.0,
        ).animateOnActionTrigger(
          animationsMap['iconOnActionTriggerAnimation']!,
        ),
      ),
    );
  }
}
