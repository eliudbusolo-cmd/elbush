"""Student Ranking System"""

obj Student {
    has name: str;
    has maths: int;
    has english: int;
    has science: int;
    has kiswahili: int;
    has social_studies: int;
    has total: int = 0;

    def calc_total() -> void {
        self.total = self.maths + self.english + self.science + self.kiswahili + self.social_studies;
    }
}

walker Ranker {
    has students: list[Student];
    has ranked: list[Student];

    def run() -> void {
        for s in self.students {
            s.calc_total();
        }

        self.ranked = self.students.copy();

        for i in range(len(self.ranked)) {
            for j in range(i + 1, len(self.ranked)) {
                if self.ranked[j].total > self.ranked[i].total {
                    temp = self.ranked[i];
                    self.ranked[i] = self.ranked[j];
                    self.ranked[j] = temp;
                }
            }
        }

        report("🏆 Student Rankings:");
        for i in range(len(self.ranked)) {
            s = self.ranked[i];
            report("{}. {} - Total Marks: {}", i + 1, s.name, s.total);
        }
    }
}

with entry {
    s1 = Student(name="Amina", maths=78, english=85, science=90, kiswahili=88, social_studies=80, total=0);
    s2 = Student(name="Brian", maths=65, english=70, science=75, kiswahili=60, social_studies=72, total=0);
    s3 = Student(name="Chipo", maths=90, english=92, science=88, kiswahili=85, social_studies=91, total=0);
    s4 = Student(name="David", maths=55, english=60, science=58, kiswahili=62, social_studies=59, total=0);

    r = Ranker(students=[s1, s2, s3, s4], ranked=[]);
    r.run();
    
    report flush;   # 👈🏾 Shows report() contents
}