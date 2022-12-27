import 'package:flutter/cupertino.dart';

class HeartAnimationWidget extends StatefulWidget {
  const HeartAnimationWidget({Key? key, required this.widget, required this.isAnimating, this.duration = const Duration(milliseconds: 150), this.onEnd}) : super(key: key);

  final Widget widget;
  final bool isAnimating;
  final Duration duration;
  final VoidCallback? onEnd;

  @override
  State<HeartAnimationWidget> createState() => _HeartAnimationWidgetState();
}

class _HeartAnimationWidgetState extends State<HeartAnimationWidget> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();

    final halfDuration = widget.duration.inMilliseconds ~/ 2;

    controller = AnimationController(vsync: this, duration: Duration(milliseconds: halfDuration));

    scale = Tween<double> (begin: 1, end: 1.2).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HeartAnimationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if(widget.isAnimating != oldWidget.isAnimating) {
      doAnimation();
    }
  }

  Future doAnimation() async {
    if(widget.isAnimating) {
      await controller.forward();
      await controller.reverse();

      await Future.delayed(const Duration(milliseconds: 500));

      if(widget.onEnd != null) {
        widget.onEnd!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
        scale: scale,
    child: widget.widget,);
  }
}
