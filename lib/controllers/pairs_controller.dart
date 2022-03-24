import 'package:flutter/widgets.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PairsController {
  List<Pair> rightAnswersPairs = [];
  List<Pair> lieAnswersPairs = [];
  List<Pair> timesUpPairs = [];
  List<List<String>> pairs = [];
  List<String> descriptionList = [];

  List<ChainElement> chainElements = [];
  List<String> chain = [];
  List<List<String>> chains = [];
  List<List<List<String>>> codesList = [];
  List<ChainToFix> chainsToFix = [];
  List<String> mainChain = []; // for structs
  List<String> paths = [];

  bool isChainPractical = false;
  bool isNotCheckPractical = false;

  String title = '';
  int maxSecondsStart = 20;
  int tempSeconds = 0;
  int maxSecondsCheck = 15;
  bool isCorrection = false;
  int countOfOnePass = 10; // по 10 элементов в каждом заходе

  int repeatInterval = 1; // always different

  int maxArrayInterval = 1; // always different
  int arrayInterval = 1;
  bool isLastSet = false;

  int maxGlobalArrayInterval = 1;
  int globalArrayInterval = 1; // для двойных повторов
  bool isLastSetGlobal = true; // по умолчанию должен быть true поскольку не все упражнения содержат двойные повторы

  Widget? nextPageStart;
  Widget? nextPageCheck;
  Widget? nextPageResult;
  Widget? nextPageInfo;

  bool pairsContainsNumbers = false; // check page (isCorrection == true)
  bool isFormCheck = false;
  bool isOnlyOneValueInCheck = false;

  // decoration
  bool isSmallTitle = false;
  bool isMiddleSizePB = false;
  bool isSmallSizePB = false;

  bool isBigPicturePractical = false; // names, cfo, states
  bool isSmallPicturePractical = false; // flags
  bool isNamePractical = false;
  bool isFlagsPractical = false;

  // lie create
  List<String> lieValues = [];
  bool isLieList = false; // check page (lieList generation)

  bool isForeignWordsPractical = false;
  List<String> transcriptionsList = [];
  int maxDescriptionArrayInterval = 1;

  bool isRepeatPractical = false;
  bool isInfoPageExist = false;
  String formHintText = '';
  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter();
  TextInputType textInputType = TextInputType.text;
  bool isFormCheckBoxExist = false;
  bool isSingleChain = false;
  bool enableCorrection = true;
  List<String> referencesList = [];
  bool isCustomReferenceList = false;
  bool isLociiPractical = false;
  String formCheckBoxHint = '';
  bool isTelPractical = false;
  String telCarText = '';

  bool isCheckExercise = false;
  bool isExpandableImage = false;
  bool isToggleNumbers = false;
  bool isSmallOptionsText = false;

  bool isRepeatPairValue = false;
  bool isLongPairsChain = false; // для субъектов РФ, например
  int countMinusOfLastPass = 0; // для субъектов РФ, например
  bool isLongOneValue = false;
  bool isNumbersExercise = false;
  bool isPiExercise = false;
  bool isNotCheck = false; // для раздела упражнений
  bool isCodesTrainPractical = false;
  bool isPasswordPractical = false;
  List<String> liePaths = [];
  String practicalKey = '';
  String nextPracticalKey = '';
  int totalSeconds = 0;
  bool enableStatistics = true;
  bool isCodesExist = false;

  void clear() {
    chains = [];
    rightAnswersPairs = [];
    lieAnswersPairs = [];
    timesUpPairs = [];
    pairs = [];
    paths = [];
    liePaths = [];
    descriptionList = [];
    isNotCheckPractical = false;
    countOfOnePass = 10;
    arrayInterval = 1;
    repeatInterval = 1;
    maxSecondsCheck = 15;
    maxGlobalArrayInterval = 1;
    maxArrayInterval = 1;
    globalArrayInterval = 1;
    isLastSetGlobal = true;
    isLastSet = false;
    isCorrection = false;

    lieValues = [];
    isLieList = false;

    pairsContainsNumbers = false;

    isFormCheck = false;
    isOnlyOneValueInCheck = false;
    isSmallTitle = false;

    isMiddleSizePB = false;
    isSmallSizePB = false;
    isBigPicturePractical = false;
    isSmallPicturePractical = false;
    isNamePractical = false;
    isFlagsPractical = false;

    isForeignWordsPractical = false;
    transcriptionsList = [];
    maxDescriptionArrayInterval = 1;

    isRepeatPractical = false;

    isChainPractical = false;

    chainElements = [];
    chain = [];
    chainsToFix = [];
    mainChain = []; // for structs
    tempSeconds = 0;
    isInfoPageExist = false;
    formHintText = '';
    maskFormatter = MaskTextInputFormatter();
    textInputType = TextInputType.text;
    isFormCheckBoxExist = false;
    isSingleChain = false;
    enableCorrection = true;
    isCustomReferenceList = false;
    referencesList = [];
    isLociiPractical = false;
    formCheckBoxHint = '';
    isTelPractical = false;
    telCarText = '';
    isCheckExercise = false;
    isExpandableImage = false;
    isToggleNumbers = false;
    isSmallOptionsText = false;

    isRepeatPairValue = false;
    isLongPairsChain = false;
    countMinusOfLastPass = 0;
    isLongOneValue = false;
    isPiExercise = false;
    isNotCheck = false;
    isNumbersExercise = false;
    isCodesTrainPractical = false;
    isPasswordPractical = false;
    practicalKey = '';
    totalSeconds = 0;
    enableStatistics = true;
    isCodesExist = false;
    codesList = [];
  }
}

class Pair {
  final String firstValue; // first of  pair - always correct
  final String secondCorrect; // second of pair - always correct
  final String secondValue; // second of pair - the word that was tapped by user
  final bool isCorrect;
  final bool isMale;

  Pair({
    required this.firstValue,
    required this.secondCorrect,
    required this.secondValue,
    required this.isCorrect,
    this.isMale = false
  });
}

class ChainToFix {
  bool isFixed;
  List<String> chain = [];

  ChainToFix({this.isFixed = false,required this.chain});
}

class ChainElement {
  final bool isCorrect;
  final bool isTimesUp; // if isNotCorrect and it is because time `s up
  final String answeredFalseNextElement;
  final String element;
  final String nextElement;
  final bool isRememberView;

  ChainElement({
    required this.isCorrect,
    required this.element,
    required this.nextElement,
    this.isTimesUp = false,
    this.answeredFalseNextElement = '',
    this.isRememberView = false,
  });
}
