import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ProgressBarAnimation extends StatefulWidget {
  const ProgressBarAnimation(
      {super.key,
      required this.progress,
      required this.color,
      required this.title});
  final String title;
  final double progress;
  final MaterialColor color;

  @override
  State<StatefulWidget> createState() => _ProgressBarAnimationState();
}

class _ProgressBarAnimationState extends State<ProgressBarAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double currentProgress = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animation.addListener(() {
      setState(() {
        currentProgress = _animation.value * (widget.progress / 100);
      });
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextTheme.small(widget.title, context),
        SizedBox(
          width: 100,
          height: 100,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              Color progressColor = _getColorForPercentage(
                  currentProgress * 100,
                  color: widget.color);

              return Stack(
                alignment: Alignment.center,
                children: [
                  AppTextTheme.small(
                      "%${widget.progress.toStringAsFixed(1)}",
                      fontWeight: FontWeight.normal,
                      context),
                  SizedBox(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      strokeWidth: 15,
                      strokeAlign: 3,
                      strokeCap: StrokeCap.round,
                      value: currentProgress,
                      valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Color _getColorForPercentage(double percentage,
      {required MaterialColor color}) {
    if (percentage < 10) {
      return color.shade100;
    } else if (percentage < 20) {
      return color.shade200;
    } else if (percentage < 30) {
      return color.shade300;
    } else if (percentage < 40) {
      return color.shade400;
    } else if (percentage < 50) {
      return color.shade500;
    } else if (percentage < 60) {
      return color.shade600;
    } else if (percentage < 70) {
      return color.shade700;
    } else if (percentage < 80) {
      return color.shade800;
    } else {
      return color.shade900;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
