import 'package:expenditure_app/constants/pages/add_text.dart';
import 'package:expenditure_app/constants/theme/color.dart';
import 'package:expenditure_app/constants/theme/text_theme.dart';
import 'package:flutter/material.dart';

class IncomePage extends StatefulWidget {
  const IncomePage({super.key});

  @override
  State<IncomePage> createState() => _IncomePageState();
}

class _IncomePageState extends State<IncomePage> {
  late TextEditingController _textEditingController;
  double _totalIncome = 0.0;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppTextTheme.kanit(
                  _totalIncome.toStringAsFixed(2),
                  size: 40,
                  fontWeight: FontWeight.w700,
                  context),
              AppTextTheme.kanit(
                  "₺", size: 40, fontWeight: FontWeight.w700, context),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextField(
              controller: _textEditingController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              style: const TextStyle(fontSize: 24.0, color: Colors.indigo),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          _buildNumberPad(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  _addsaToTotalIncome();
                },
                child: AppTextTheme.small(
                    incomeDelete, color: AppColor.indigo900, context),
              ),
              TextButton(
                onPressed: () {
                  _addToTotalIncome();
                },
                child: AppTextTheme.small(
                    incomeAdd, color: AppColor.indigo900, context),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget _buildNumberPad(BuildContext context) {
    return Column(
      children: [
        _buildNumberRow(context, ["1", "2", "3"]),
        _buildNumberRow(context, ["4", "5", "6"]),
        _buildNumberRow(context, ["7", "8", "9"]),
        _buildNumberRow(context, [".", "0", "<"]),
      ],
    );
  }

  Widget _buildNumberRow(BuildContext context, List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: numbers
          .map((number) => TextButton(
              onPressed: () => _onNumberPressed(number),
              child: AppTextTheme.kanit(
                  number, size: 35, fontWeight: FontWeight.w700, context)))
          .toList(),
    );
  }

  void _onNumberPressed(String number) {
    setState(() {
      if (number == "<") {
        final text = _textEditingController.text;
        if (text.isNotEmpty) {
          _textEditingController.text = text.substring(0, text.length - 1);
        }
      } else {
        _textEditingController.text += number;
      }
    });
  }

  void _addsaToTotalIncome() {
    setState(() {
      final enteredValue = double.tryParse(_textEditingController.text) ?? 0.0;
      _totalIncome -= enteredValue;
      _textEditingController.clear();
    });
  }

  void _addToTotalIncome() {
    setState(() {
      final enteredValue = double.tryParse(_textEditingController.text) ?? 0.0;
      _totalIncome += enteredValue;
      _textEditingController.clear();
    });
  }
}
