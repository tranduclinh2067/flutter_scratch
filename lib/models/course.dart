class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);
  static List<Course> generateCourse() {
    return [
      Course('Lĩnh', 'assets/icons/frog.png', 'Con Khỉ',
          'assets/images/monkey.png'),
      Course(
          'Steve', 'assets/icons/sloth.png', 'Meow', 'assets/images/cat.png'),
    ];
  }
}
