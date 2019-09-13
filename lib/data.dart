class Candidate {
  String firstName;
  String lastName;
  String occupation;
  String pictureHome;
  String pictureProfile;
  String party;
  int age;

  Candidate(this.firstName, this.lastName, this.occupation, this.pictureHome, this.pictureProfile, this.party, this.age);
}

List<Candidate> candidates = [
  Candidate("Michael", "Bennet", "Senator", "assets/mb.jpg", "assets/mb-tall.jpg", "Democrat", 54),
  Candidate("Joe", "Biden", "Former Vice President", "assets/jb.jpg", "assets/jb-tall.jpg", "Democrat", 76),
  Candidate("Cory", "Booker", "Senator", "assets/cb.jpg", "assets/cb-tall.jpg", "Democrat", 50),
  Candidate("Steve", "Bullock", "Governor", "assets/sb.jpg", "assets/sb-tall.jpg", "Democrat", 53),
  Candidate("Pete", "Buttigieg", "Mayor", "assets/pb.jpg", "assets/pb-tall.jpg", "Democrat", 37),
  Candidate("Julian", "Castro", "Former Mayor", "assets/jc.jpg", "assets/jc-tall.jpg", "Democrat", 44),
  Candidate("Bill", "de Blasio", "Mayor", "assets/bb.jpg", "assets/bb-tall.jpg", "Democrat", 58),
  Candidate("John", "Delaney", "Former Congressman", "assets/jd.jpg", "assets/jd-tall.jpg", "Democrat", 56),
  Candidate("Tulsi", "Gabbard", "Congresswoman", "assets/tg.jpg", "assets/tg-tall.jpg", "Democrat", 38),
  Candidate("Kamala", "Harris", "Senator", "assets/kh.jpg", "assets/kh-tall.jpg", "Democrat", 54),
  Candidate("Amy", "Klobuchar", "Senator", "assets/ak.jpg", "assets/ak-tall.jpg", "Democrat", 59),
  Candidate("Wayne", "Messam", "Mayor", "assets/wm.jpg", "assets/wm-tall.jpg", "Democrat", 45),
  Candidate("Beto", "O'Rourke", "Former Congressman", "assets/bo.jpg","assets/bo-tall.jpg", "Democrat", 46),
  Candidate("Tim", "Ryan", "Congressman", "assets/tr.jpg", "assets/tr-tall.jpg", "Democrat", 46),
  Candidate("Bernie", "Sanders", "Senator", "assets/bs.jpg", "assets/bs-tall.png", "Democrat", 77),
  Candidate("Joe", "Sestak", "Former Congressman", "assets/js.jpg", "assets/js-tall.jpg", "Democrat", 67),
  Candidate("Tom", "Steyer", "Former Hedge Fund Executive", "assets/ts.jpg", "assets/ts-tall.png", "Democrat", 62),
  Candidate("Elizabeth", "Warren", "Senator", "assets/ew.jpg", "assets/ew-tall.jpg", "Democrat", 70),
  Candidate("Marianne", "Williamson", "Author", "assets/mw.jpg", "assets/mw-tall.jpg", "Democrat", 67),
  Candidate("Andrew", "Yang", "Entrepreneur", "assets/ay.jpg", "assets/ay-tall.jpg", "Democrat", 44),
  Candidate("Mark", "Sanford", "Former Congressman", "assets/ms.jpg", "assets/ms-tall.jpg", "Republican", 59),
  Candidate("Donald J.", "Trump", "President", "assets/dt.jpg", "assets/dt-tall.jpg", "Republican", 73),
  Candidate("Joe", "Walsh", "Radio Show Host", "assets/jw.jpg", "assets/jw-tall.jpg", "Republican", 57),
  Candidate("Bill", "Weld", "Former Governor", "assets/ww.png", "assets/ww-tall.jpg", "Republican", 74)
];