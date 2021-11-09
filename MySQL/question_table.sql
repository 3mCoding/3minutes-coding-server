INSERT INTO question 
VALUES
(01, 1, 5, "java", "사칙연산", 
"변수와 출력 내용을 보고 알맞은 사칙연산을 맞춰주세요.", 
"8\n4\n3\n0\n12",
"int a = 6;\nint b = 2;\n\nSystem.out.println(a ①_ b);\n
System.out.println(a ②_ b);\n
System.out.println(a ③_ b);\n
System.out.println(a ④_ b);\n
System.out.println(a ⑤_ b);\n"),

(02, 2, 2, 
"java", 
"if문(기본)",
"두 수를 입력받고 비교하는 프로그램입니다.\n출력문을 참고하여 빈칸을 채워주세요.", 
"두 수를 입력하세요 >> 7 2\n7 > 2\n두 수를 입력하세요 >> 3 3\n3 = 3",
"Scanner scan = new Scanner(System.in);\nint a, b;\nchar str = '';\n\nSystem.out.print(\"두 수를 입력하세요 >> \");\na = scan.nextInt();\nn = scan.nextInt();\n\n①__ (a > b) str = '>';\n②_______ (a < b) str = '<';\nelse str = '=';\n\nSystem.out.println(a + \" \" + str + \" \"  + b);"),
(03, 3, 4, "java",  
"if문(활용)",
"점수를 입력받으면 해당 등급을 알려주는 코드입니다.\n90점 이상이면 'A', 80점 이상이면 'B', 70점 이상이면 'C', 60점 이상이면 'D', 나머지 점수는 'F'를 출력할 수 있도록 빈칸을 채워주세요.", "점수를 입력하세요 >> 72\n\n당신은 C등급입니다.", "Scanner scan = new Scanner(System.in);\nint score;\nchar grade = ' ';\n\nSystem.out.print(\"점수를 입력하세요 >> \");\nscore = scan.nextInt();\n\nif (score ①__ 90) grade = 'A';\n
else if (score ②__ 80) grade = 'B';\n
else if (score ③__ 70) grade = 'C';\n
else if (score ④__ 59) grade = 'D';\nelse grade = 'F';\n\nSystem.out.println(\"당신은 \" + grade + \"등급 입니다.\");"),
(04, 4, 2, "java", 
"for문(기본)",
"구구단 2단을 출력하는 코드입니다.\n2단을 출력할 수 있도록 빈칸을 채워주세요.", 
"2 * 1 = 2\n2 * 2 = 4\n2 * 3 = 6\n2 * 4 = 8\n2 * 5 = 10\n2 * 6 = 12\n2 * 7 = 14\n2 * 8 = 16\n2 * 9 = 18", 
"①___ (int i = 1; i ②__ 9; i++)\n  cout << num << \" * \" << i << \" = \" << i * 2 << endl;" 
),
(05, 5, 3, "java",
"for문(활용)",
"이중 for문을 이용하여 삼각형을 출력하는 코드입니다.\n
삼각형이 나올 수 있도록 빈칸을 채워주세요. \n",
"*\n
**\n
***\n
****\n
*****",
"for(int i = 1; i <= ①_; i++) {\n
    for(int j= 0; j < ②_; j++) {\n
        System.out.print(\"③_\");\n
    }\n
    System.out.println();\n
}"),
(06, 6, 1, "java",
"while문",
"두 수를 입력하면 합을 출력하는 프로그램입니다.\n
두 수를 입력받고 합을 출력하다가, 두 수의 합이 0이면 프로그램이 종료되도록 빈칸을 채워주세요.\n",
"두 수 입력 >> 3 4\n
3 + 4 = 7\n
두 수 입력 >> 0 0\n
프로그램 종료",
"Scanner scan = new Scanner(System.in);\n
int a, b;\n\n
while (true) {\n
	System.out.print(\"두 수 입력 : \");\n
	a = scan.nextInt();\n
	b = scan.nextInt();\n\n
	if (a + b == 0) {\n
		System.out.println(\"프로그램 종료\");\n
		①_____;\n
	}\n
\n
	System.out.println(a + \" + \" + b + \" = \" + a + b);\n
}"
),
(07, 7, 2, "java",
"1차원 배열(기본)",
"배열을 선언하고 사용하는 예제입니다.\n출력문을 참고하여 빈칸을 채워주세요.",
"오늘은 수요일입니다.",
"String[] weeks = new ①_____[7];\n
weeks[0] = \"월\";\n
weeks[1] = \"화\";\n
weeks[2] = \"수\";\n
weeks[3] = \"목\";\n
weeks[4] = \"금\";\n
weeks[5] = \"토\";\n
weeks[6] = \"일\";\n\n
System.out.println(\"오늘은 \" + weeks[②_] + \"요일입니다.\");"
),
(08, 8, 3, "java",
"1차원 배열(활용)",
"배열의 값 중에서 최댓값과 최솟값을 구하는 프로그램입니다.\n
최댓값과 최솟값을 구할 수 있도록 빈칸을 채워주세요.",
"최댓값 : 9\n
최솟값 : 1",
"①___[] arr = {3, 2, 5, 9, 1, 7};\n
int max = arr[0];\n
int min = arr[0];\n\n
for (int i = 0; i < 6; i++) {\n
\tif (arr[i] > ②___) ②___ = arr[i];\n
\telse if (arr[i] < ③___) ③___ = arr[i];\n
}\n\n
System.out.println(\"최댓값 : \" + max);\n
System.out.println(\"최솟값: \" + min);\n"
),
(09, 9, 3, "java",
"2차원 배열(기본)",
"2차원 배열을 이중 포문을 사용하여 출력하는 예제입니다.\n
출력 내용을 참고하여 빈칸을 채워주세요.",
"1  2  3  4  \n
5  6  7  8  \n
9  10  11  12",
"int①____ arr = new int[3][4];\n\n
int k = 1;\n
for(int i = 0; i < ②___.length; i++){\n
\tfor(int j = 0; j < ③______.length; j++, k++){\n
\t\t// 간략한 코드를 위해 값 저장과 출력을 동시에 했습니다.\n
\t\tarr[i][j] = k;\n
\t\tSystem.out.print(arr[i][j] + \"  \");\n
\t}\n
\tSystem.out.println();\n
}"
),
(010, 10, 4, "java",
"2차원 배열(활용)",
"2차원 배열을 이용하여 퀴즈 게임을 만든 프로그램입니다.\n
출력 내용을 참고하여 빈칸을 채워주세요.",
"int의 자료형은? >> 정수형\n
정답입니다.\n
String의 자료형은? >> 문자\n
틀렸습니다. 정답은 문자열입니다.\n
double의 자료형은? >> 실수형\n
정답니다.\n",
"Scanner scan = new Scanner(System.in);\n
String[][] words = new String[][]\n
{\n
\t\t\t\t\t{\"int\", \"정수형\"},\n
\t\t\t\t\t{\"String\", \"문자열\"},\n
\t\t\t\t\t{\"douuble\", \"실수형\"}\n
}\n\n
for (int i = 0; i < ①___.length; i++) {\n
\tSystem.out.print(words[i][②_] + \"의 자료형은? >> \");\n
\tString input = scanner.next();\n\n
\tif (input.equals(words[i][③_])) {\n
\t\tSystem.out.println(\"정답입니다.\");\n
\t}\n
\telse {\n
\t\tSystem.out.println(\"틀렸습니다. 정답은 \" + words[i][④_] + \"입니다\");\n
\t}\n
}"
);

INSERT INTO question 
VALUES
(11, 1, 5, "c", "사칙연산", 
"변수와 출력 내용을 보고 알맞은 사칙연산을 맞춰주세요.", 
"8\n4\n3\n0\n12",
"int a = 6;\n
int b = 2;\n\n
printf(\"%d\n\", a ①_ b);\n
printf(\"%d\n\", a ①_ b);\n
printf(\"%d\n\", a ②_ b);\n
printf(\"%d\n\", a ③_ b);\n
printf(\"%d\n\", a ④_ b);\n
printf(\"%d\n\", a ⑤_ b);\n"),

(12, 2, 2, 
"c", 
"if문(기본)",
"두 수를 입력받고 비교하는 프로그램입니다.\n출력문을 참고하여 빈칸을 채워주세요.", 
"두 수를 입력하세요 >> 7 2\n7 > 2\n두 수를 입력하세요 >> 3 3\n3 = 3",
"int a, b;\n
char str = '';\n\n
printf(\"두 수를 입력하세요 >> \");\n
scanf(\"%d\", &a);\n
scanf(\"%d\", &b);\n\n
①__ (a > b) str = '>';\n
②_______ (a < b) str = '<';\n
else str = '=';\n\n
printf(\"%d %c %d\", a, str, b);"),

(13, 3, 4, "c",  
"if문(활용)",
"점수를 입력받으면 해당 등급을 알려주는 코드입니다.\n90점 이상이면 'A', 80점 이상이면 'B', 70점 이상이면 'C', 60점 이상이면 'D', 나머지 점수는 'F'를 출력할 수 있도록 빈칸을 채워주세요.", "점수를 입력하세요 >> 72\n\n당신은 C등급입니다.", "int score;\n
char grade = ' ';\n\n
printf(\"점수를 입력하세요 >> \");\n
scanf(\"%d\", &score);\n\n
if (score ①__ 90) grade = 'A';\n
else if (score ②__ 80) grade = 'B';\n
else if (score ③__ 70) grade = 'C';\n
else if (score ④__ 59) grade = 'D';\n
else grade = 'F';\n\n
printf(\"당신은 %c등급입니다.\", grade);"),
(14, 4, 2, "c", 
"for문(기본)",
"구구단 2단을 출력하는 코드입니다.\n2단을 출력할 수 있도록 빈칸을 채워주세요.", 
"2 * 1 = 2\n2 * 2 = 4\n2 * 3 = 6\n2 * 4 = 8\n2 * 5 = 10\n2 * 6 = 12\n2 * 7 = 14\n2 * 8 = 16\n2 * 9 = 18", 
"①___ (int i = 1; i ②__ 9; i++) 
\tprintf(\"2 * %d = %d\n\", i, i * 2);" 
),
(15, 5, 5, "c",
"for문(활용)",
"이중 for문을 이용하여 삼각형을 출력하는 코드입니다.\n
삼각형이 나올 수 있도록 빈칸을 채워주세요. \n",
"*\n
**\n
***\n
****\n
*****",
"for(int i = 1; i <= ①_; i++) {\n
\tfor(int j= 0; j < ②_; j++) {\n
\t\tprintf(\"③_\");\n
\t}\n
\tprintf(\"\n\");\n
}"),
(16, 6, 1, "c",
"while문",
"두 수를 입력하면 합을 출력하는 프로그램입니다.\n
두 수를 입력받고 합을 출력하다가, 두 수의 합이 0이면 프로그램이 종료되도록 빈칸을 채워주세요.\n",
"두 수 입력 >> 3 4\n
3 + 4 = 7\n
두 수 입력 >> 0 0\n
프로그램 종료",
"int a, b;\n\n
while (true) {\n
\tSystem.out.print(\"두 수 입력 : \");\n
\tscanf(\"%d\", &a);\n
\tscanf(\"%d\", &b);\n\n
\tif (a + b == 0) {\n
\t\tprintf(\"프로그램 종료\");\n
\t\t①_____;\n
\t}\n
\n
\tprintf(\"%d + %d = %d\", a, b, a + b);\n
}"
),
(17, 7, 2, "c",
"1차원 배열(기본)",
"배열을 선언하고 사용하는 예제입니다.\n출력문을 참고하여 빈칸을 채워주세요.",
"오늘은 수요일입니다.",
"char weeks[①_][3] = { \"월\", \"화\", \"수\", \"목\", \"금\", \"토\", \"일\" };\n
printf(\"오늘은 %s요일입니다.\", weeks[②_]);"
),
(18, 8, 3, "c",
"1차원 배열(활용)",
"배열의 값 중에서 최댓값과 최솟값을 구하는 프로그램입니다.\n
최댓값과 최솟값을 구할 수 있도록 빈칸을 채워주세요.",
"최댓값 : 9\n
최솟값 : 1",
"int arr①__ = {3, 2, 5, 9, 1, 7};\n
int max = arr[0];\n
int min = arr[0];\n\n
for (int i = 0; i < 6; i++) {\n
	if (arr[i] > ②___) ②___ = arr[i];\n
	else if (arr[i] < ③___) ③___ = arr[i];\n
}\n\n
printf(\"최댓값 : %d\", max);\n
printf(\"최솟값 : %d\", min);"
),
(19, 9, 2, "c",
"2차원 배열(기본)",
"2차원 배열을 이중 포문을 사용하여 출력하는 예제입니다.\n
출력 내용을 참고하여 빈칸을 채워주세요.",
"1  2  3  4  \n
5  6  7  8  \n
9  10  11  12",
"int arr[3][4] = { {1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12} };\n\n
int row = sizeof(①___) / sizeof(arr[0]);\n
int col = sizeof(arr[0]) / sizeof(②___);\n\n
for (int i = 0; i < row; i++) {\n
\tfor (int j = 0; j < col; j++) {\n
\t\tprintf(\"%d\t\", arr[i][j]); \n
\t}\n
\tprintf(\"\n\"); \n
}"
),
(110, 10, 0, "c",
"2차원 배열(활용)",
"준비 중입니다.",
"준비 중입니다.",
"준비 중입니다."
);

