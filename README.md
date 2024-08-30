Flutter Quiz App
This is a simple yet elegant quiz application built with Flutter. The app presents a series of multiple-choice questions and calculates the user's score based on their answers. After answering all questions, the user is shown their total score, and they have the option to restart the quiz.

Features
Multiple Choice Questions: The app displays a series of questions with four possible answers. Each question can only be answered once.
Score Calculation: The app keeps track of correct answers and calculates the total score at the end of the quiz.
Responsive UI: The app adjusts the text size and layout to ensure a smooth user experience across different screen sizes.
Elegant Design: The app uses a custom color scheme to enhance the visual appeal, with a focus on simplicity and readability.
Code Overview
main.dart: The core logic of the app is implemented here. It includes the state management for tracking the current question, calculating the score, and navigating between the quiz screen and the result screen.

The _questions list contains the quiz data, with each question having associated answers and scores.
The _answerQuestion function handles answer selection and score updating.
The build method displays the question and answer options using a Column widget and custom-styled buttons.
question.dart: This file defines the Question widget, which displays the current quiz question. It uses a simple Text widget within a Container to ensure consistent styling across different questions.

result.dart: The Result widget displays the final score after all questions have been answered. It also includes a button to restart the quiz, which navigates back to the initial screen.

How to Run
Clone the repository to your local machine.
Ensure that you have Flutter installed and set up.
Run flutter pub get to install dependencies.
Use flutter run to start the app on your emulator or connected device.
Customization
You can easily customize the questions, answers, and styling by modifying the _questions list in main.dart and the relevant widgets in the question.dart and result.dart files.
![q2](https://github.com/user-attachments/assets/b8266087-7e14-41eb-9e1b-16c6ad69dc00)
![q1](https://github.com/user-attachments/assets/03793487-8bc0-4ae9-b576-81e178af1449)



https://github.com/user-attachments/assets/1f48ab12-96da-4cb5-be72-cc43122b3f31

