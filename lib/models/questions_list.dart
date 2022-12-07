class Question {
  final int id, answer_correct;
  final String question, path;
  final List<String> options;

  Question(
      {required this.id,
      required this.path,
      required this.question,
      required this.answer_correct,
      required this.options});
}

const List question = [
  {
    "id": 1,
    "path": "",
    "question":
        "Xương hóa thạch của loài vượn cổ xuất hiện khoảng 6 triệu năm trước đây được tìm thấy ở đâu?",
    "options": [
      "Đông Phi, Tây Á, Bắc Á.",
      "Đông Phi, Tây Á, Việt Nam.",
      "Đông Phi, Việt Nam, Trung Quốc.",
      "Tây Á, Trung Á, Bắc Mĩ."
    ],
    "answer_correct": 0,
  },
  {
    "id": 2,
    "path": "",
    "question": "Ở Việt Nam đã tìm thấy cả xương hóa thạch của",
    "options": [
      "Vượn cổ.",
      "Người tối cổ.",
      "Người tinh khôn giai đoạn đầu.",
      "Cả vượn cổ và Người tối cổ."
    ],
    "answer_correct": 0,
  },
  {
    "id": 3,
    "path": "",
    "question":
        "Di cốt của người tối cổ xuất hiện khoảng 4 triệu năm trước đây được tìm thấy ở đâu?",
    "options": [
      "Đông Phi, Trung Quốc, Bắc Âu.",
      "Đông Phi, Tây Á, Bắc Âu.",
      "Đông Phi, Giava, Bắc Kinh.",
      "Tây Á, Trung Quốc, Bắc Âu."
    ],
    "answer_correct": 2,
  },
  {
    "id": 4,
    "path": "",
    "question": "Người tối cổ xuất hiện cách ngày nay",
    "options": [
      "Khoảng 4 triệu năm.",
      "Khoảng 5-6 triệu năm.",
      "Khoảng 6-7 triệu năm.",
      "Khoảng 8-9 triệu năm."
    ],
    "answer_correct": 0,
  },
  {
    "id": 5,
    "path": "",
    "question":
        "Người tối cổ xuất hiện cách đây 4 triệu năm đã tạo ra công cụ lao động như thế nào?",
    "options": [
      "Lấy những mảnh đá, hòn cuội có sẵn trong tự nhiên để làm công cụ.",
      "Ghè, đẽo một mặt mảnh đá hay hòn cuội.",
      "Ghè đẽo, mài một mặt mảnh đá hay hòn cuội.",
      "Ghè đẽo, mài cẩn thận hai mặt mảnh đá."
    ],
    "answer_correct": 1,
  },
  {
    "id": 6,
    "path": "",
    "question": "Công cụ lao động của Người tối cổ ứng với thời kì nào?",
    "options": [
      "Sơ kì đá cũ.",
      "Sơ kì đá mới.",
      "Sơ kì đá giữa.",
      "Hậu kì đá mới."
    ],
    "answer_correct": 0,
  },
  {
    "id": 7,
    "path": "",
    "question": "Cho đến thời điểm nào Người tối cổ trở thành Người tinh khôn?",
    "options": [
      "Đã đi dứng thẳng bằng hai chân, hai tay đã được giải phóng.",
      "Khi loại bỏ hết dấu tích vượn trên cơ thể.",
      "Biết chế tác công cụ lao động.",
      "Biết săn thú, hái quả để làm thức ăn."
    ],
    "answer_correct": 1,
  },
  {
    "id": 8,
    "path": "",
    "question": "Người tinh khôn xuất hiện vào khoảng thời gian nào?",
    "options": [
      "Khoảng 3 vạn năm cách ngày nay.",
      "Khoảng 4 vạn năm cách ngày nay.",
      "Khoảng 3 triệu năm cách ngày nay.",
      "Khoảng 4 triệu năm cách ngày nay."
    ],
    "answer_correct": 1,
  },
  {
    "id": 9,
    "path": "",
    "question": "Có sự khác nhau về màu da giữa các chủng tộc là do đâu?",
    "options": [
      "Sự khác nhau về trình độ hiểu biết.",
      "Sự thích ứng lâu dài của con người với điều kiện tự nhiên.",
      "Do di truyền từ thế hệ này sang thế hệ khác.",
      "Do tác động bởi quá trình lao động."
    ],
    "answer_correct": 1,
  },
  {
    "id": 10,
    "path": "",
    "question":
        "Sự khác nhau về màu da giữa các chủng tộc trên thế giới là biểu hiện sự khác nhau về ___",
    "options": [
      "Trình độ văn minh.",
      "Đẳng cấp xã hội.",
      "Trình độ kinh tế.",
      "Đặc điểm sinh học."
    ],
    "answer_correct": 3,
  },
];
