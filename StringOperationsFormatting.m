
name = "Praise";
course = "EEE254";

intro = strcat("Student Name: ", name, " | Course: ", course);
disp(intro);

score = 89.75;
summary = sprintf("Name: %s\nCourse: %s\nScore: %.2f%%", name, course, score);
disp(summary);

sentence = "MATLAB makes engineering tasks efficient and fun";
words = split(sentence);
disp("Split words:");
disp(words);


new_sentence = replace(sentence, "fun", "powerful");
disp("Updated sentence:");
disp(new_sentence);