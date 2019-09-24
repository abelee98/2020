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

class Policy {
  String name;
  Policy(this.name);
}

List<Candidate> candidates = [
  Candidate("Michael", "Bennet", "Senator", "mb.jpg", "mb-tall.jpg", "Democrat", 54),
  Candidate("Joe", "Biden", "Former Vice President", "jb.jpg", "jb-tall.jpg", "Democrat", 76),
  Candidate("Cory", "Booker", "Senator", "cb.jpg", "cb-tall.jpg", "Democrat", 50),
  Candidate("Steve", "Bullock", "Governor", "sb.jpg", "sb-tall.jpg", "Democrat", 53),
  Candidate("Pete", "Buttigieg", "Mayor", "pb.jpg", "pb-tall.jpg", "Democrat", 37),
  Candidate("Julian", "Castro", "Former Mayor", "jc.jpg", "jc-tall.jpg", "Democrat", 44),
  Candidate("Bill", "de Blasio", "Mayor", "bb.jpg", "bb-tall.jpg", "Democrat", 58),
  Candidate("John", "Delaney", "Former Congressman", "jd.jpg", "jd-tall.jpg", "Democrat", 56),
  Candidate("Tulsi", "Gabbard", "Congresswoman", "tg.jpg", "tg-tall.jpg", "Democrat", 38),
  Candidate("Kamala", "Harris", "Senator", "kh.jpg", "kh-tall.jpg", "Democrat", 54),
  Candidate("Amy", "Klobuchar", "Senator", "ak.jpg", "ak-tall.jpg", "Democrat", 59),
  Candidate("Wayne", "Messam", "Mayor", "wm.jpg", "wm-tall.jpg", "Democrat", 45),
  Candidate("Beto", "O'Rourke", "Former Congressman", "bo.jpg","bo-tall.jpg", "Democrat", 46),
  Candidate("Tim", "Ryan", "Congressman", "tr.jpg", "tr-tall.jpg", "Democrat", 46),
  Candidate("Bernie", "Sanders", "Senator", "bs.jpg", "bs-tall.png", "Democrat", 77),
  Candidate("Joe", "Sestak", "Former Congressman", "js.jpg", "js-tall.jpg", "Democrat", 67),
  Candidate("Tom", "Steyer", "Former Hedge Fund Exec.", "ts.jpg", "ts-tall.png", "Democrat", 62),
  Candidate("Elizabeth", "Warren", "Senator", "ew.jpg", "ew-tall.jpg", "Democrat", 70),
  Candidate("Marianne", "Williamson", "Author", "mw.jpg", "mw-tall.jpg", "Democrat", 67),
  Candidate("Andrew", "Yang", "Entrepreneur", "ay.jpg", "ay-tall.jpg", "Democrat", 44),
  Candidate("Mark", "Sanford", "Former Congressman", "ms.jpg", "ms-tall.jpg", "Republican", 59),
  Candidate("Donald J.", "Trump", "President", "dt.jpg", "dt-tall.jpg", "Republican", 73),
  Candidate("Joe", "Walsh", "Radio Show Host", "jw.jpg", "jw-tall.jpg", "Republican", 57),
  Candidate("Bill", "Weld", "Former Governor", "ww.png", "ww-tall.jpg", "Republican", 74)
];

List<Policy> policies = [
  Policy("Abortion"),
  Policy("Gun Control"),
  Policy("Climate"),
  Policy("Taxes"),
  Policy("Healthcare"),
  Policy("Minimum Wage"),
  Policy("Drug Price"),
  Policy("Marijuana")
];