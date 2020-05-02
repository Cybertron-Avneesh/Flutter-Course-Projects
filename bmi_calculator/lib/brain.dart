import 'dart:math';

class Brain{
  Brain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  String calculateBMI()
  {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi>=25)
    return 'OverWeight';
    else if(_bmi<=18.5)
    return 'UnderWeight';
    else 
    return 'Normal';
  }

  String getInterpretation(){
    if(_bmi>=25)
    return 'OverWeightYou have a higher than normal body weight. Try to exercise more.';
    else if(_bmi<=18.5)
    return 'You have a lower than normal body weight. You can eat a bit more.';
    else 
    return 'You have a normal body weight. Good job!';
  }


}