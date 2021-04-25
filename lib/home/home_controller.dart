import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Gustavo",
      photoUrl: "https://avatars.githubusercontent.com/u/6917218?v=4",
      score: 0,
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        image: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou adorando"),
              AnswerModel(title: "Estou amando"),
              AnswerModel(title: "Muito Top", isCorrect: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou adorando"),
              AnswerModel(title: "Estou amando"),
              AnswerModel(title: "Muito Top", isCorrect: true),
            ],
          ),
        ],
      ),
    ];
  }
}
