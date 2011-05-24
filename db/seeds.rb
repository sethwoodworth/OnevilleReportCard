# Must register a user first (uses the last created user for the student connection)
Student.delete_all
Attendance.delete_all
Anomaly.delete_all
Subject.delete_all
Standard.delete_all
Assessment.delete_all
Exam.delete_all
ExamAssessment.delete_all
Section.delete_all

student = Student.create(:name => "Joe Cooper", :user_id => User.last.id, :performance_summary => "Joe has been doing a great job this quarter! He is consistently participating in classroom discussions and helping others that need it. Homework has been turned in more often, but it is still not 100% of the time. I would really like to have his homework reflect what he is capable of.")
student2 = Student.create(:name => "Mary Billings", :user_id => User.last.id, :performance_summary => "Mary has been doing a great job this quarter! She is consistently participating in classroom discussions and helping others that need it. Homework has been turned in more often, but it is still not 100% of the time. I would really like to have her homework reflect what she is capable of.")
months = [3, 4, 5]

months.each do |m|
  Attendance.create({:student_id => student.id, :month =>  m, :year => 2011})
  Attendance.create({:student_id => student2.id, :month =>  m, :year => 2011})
end

Anomaly.create(:attendance_id => Attendance.first.id, :kind => "absent", :school_date => Time.local(2011, 4, 21))
Anomaly.create(:attendance_id => Attendance.first.id, :kind => "absent", :school_date => Time.local(2011, 4, 6))
Anomaly.create(:attendance_id => Attendance.first.id, :kind => "late", :moment => Time.local(2011, 4, 4, 9), :school_date => Time.local(2011, 4, 4))
Anomaly.create(:attendance_id => Attendance.all[1].id, :kind => "late", :moment => Time.local(2011, 5, 5, 9), :school_date => Time.local(2011, 5, 5))

s = Subject.create(:description => "Reading and Literature")

    [{"Reads with accuracy, fluency, and expression" => "m"},
      {"Understands and utilizes new vocabulary" => "n"},
      {"Comprehends literal meaning: identifies and summarizes main ideas, supporting details, recalls facts and events" => "s"},
      {"Comprehends inferential meaning: makes predictions, understands cause and effect" => "m"},
      {"Understands the elements of a variety of genres of literature" => "m"},
      {"Identifies and makes judgments about characters, plot, conflict, and resolution" => "m"},
      {"Identifies and analyzes elements of poetry and drama" => "na"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end


s = Subject.create(:description => "Language and Composition")
    [{"Communicates effectively in oral presentations" => "m"},
      {"Poses questions, listens to others, and contributes ideas" => "m"},
      {"Uses correct capitalization and punctuation in written work" => "m"},
      {"Applies knowledge of spelling rules and patterns to everyday writing" => "m"},
      {"Uses standard English in written work" => "m"},
      {"Identifies parts of speech Plans and develops an organized writing piece" => "m"},
      {"Writes an organized piece with purpose, clarity, and details" => "m"},
      {"Gathers and analyzes information for research" => "m"},
      {"Uses a variety of sentence structures" => "m"},
      {"Effectively uses prefixes, suffixes, and root words" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end


s = Subject.create(:description => "History and Social Science")
    [{"Demonstrates understanding of social studies concepts and content" => "m"},
      {"Interprets and uses data from maps, charts and tables" => "m"},
      {"Communicates understanding of social studies concepts using correct vocabulary, both orally and in writing" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Mathematics")

   [{"Demonstrates mastery of basic facts (+, -)" => "m"},
      {"Demonstrates mastery of basic facts (x, &#x00f7;)" => "m"},
      {"Demonstrates understanding of place value through millions and thousandths" => "m"},
      {"Estimates numerical operations using whole numbers, decimals, and fractions" => "m"},
      {"Solves multi-digit numerical operations" => "m"},
      {"Understands and uses appropriate problem-solving strategies involving whole numbers, fractions, and patterns" => "m"},
      {"Uses data to construct and interpret graphs" => "m"},
      {"Demonstrates knowledge of geometric concepts" => "m"},
      {"Understands and applies fraction concepts by adding, subtracting, multiplying, comparing, and ordering" => "m"},
      {"Understands and applies decimals, ratios, and percents" => "m"},
      {"Uses and converts simple units of measurement" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end


s = Subject.create(:description => "Science")
    [{"Predicts probability of outcomes" => "m"},
      {"Demonstrates understanding of the science concepts and content" => "m"},
      {"Understands and applies the scientific method" => "m"},
      {"Communicates scientific thinking using correct vocabulary, both orally and in writing" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Art")
    [{"Participates appropriately, demonstrates effort, and cooperates" => "m"},
      {"Respects rules, routines, school personnel, peers, and school property" => "m"},
      {"Demonstrates understanding of skills and concepts" => "m"},
      {"Demonstrates ability to use skills and concepts effectively" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Physical Education")
    [{"Participates appropriately, demonstrates effort, and cooperates" => "m"},
      {"Respects rules, routines, school personnel, peers, and school property" => "m"},
      {"Demonstrates understanding of skills and concepts" => "m"},
      {"Demonstrates ability to use skills and concepts effectively" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Library/Media")
    [{"Participates appropriately, demonstrates effort, and cooperates" => "m"},
      {"Respects rules, routines, school personnel, peers, and school property" => "m"},
      {"Demonstrates understanding of skills and concepts" => "m"},
      {"Demonstrates ability to use skills and concepts effectively" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Music")
    [{"Participates appropriately, demonstrates effort, and cooperates" => "m"},
      {"Respects rules, routines, school personnel, peers, and school property" => "m"},
      {"Demonstrates understanding of skills and concepts" => "m"},
      {"Demonstrates ability to use skills and concepts effectively" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Instrumental Music")
    [{"Participates appropriately, demonstrates effort, and cooperates" => "m"},
      {"Respects rules, routines, school personnel, peers, and school property" => "m"},
      {"Demonstrates understanding of skills and concepts" => "m"},
      {"Demonstrates ability to use skills and concepts effectively" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Conduct/Social Behavior")
    [{"Follows school and classroom rules" => "m"},
      {"Respects school personnel" => "m"},
      {"Respects peers" => "m"},
      {"Demonstrates self-control" => "m"},
      {"Respects school property/materials" => "m"},
      {"Assumes responsibility for his/her own actions" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end

s = Subject.create(:description => "Work Habits")
    [{"Demonstrates effort" => "m"},
      {"Works cooperatively" => "m"},
      {"Works well independently" => "m"},
      {"Completes tasks in allotted time" => "m"},
      {"Organizes materials/workspace" => "m"},
      {"Produces neat and careful work" => "m"},
      {"Listens attentively" => "m"},
      {"Follows oral and written directions" => "m"},
      {"Participates appropriately in class" => "m"},
      {"Completes and returns homework on time" => "m"}].each do |standard|
        Standard.create(:description => standard.keys.first, :subject_id => s.id)
      end


@scores = ["m", "s", "n", "na"]
Student.all.each do |student|
  Standard.all.each do |standard|
    4.times do |i|
      Assessment.create(:standard_id => standard.id, 
                        :score => @scores[rand(@scores.size)], 
                        :period => Time.local(2011, (i+1)*3),
                        :student_id => student.id) 
    end
  end
end
  exam = Exam.create(:kind => "MCAS")
  Student.all.each do |student|
    3.times do |i|
      e = ExamAssessment.create(:exam_id => exam.id, 
                        :period => Time.local(2011, (i+1)*3),
                        :student_id => student.id) 
      Section.create(:exam_assessment_id => e.id, :score => rand(250), :name => "Score")
      Section.create(:exam_assessment_id => e.id, :score => rand(100), :name => "Percentile")
    end
  end

  exam = Exam.create(:kind => "MAP")
  Student.all.each do |student|
    3.times do |i|
      e = ExamAssessment.create(:exam_id => exam.id, 
                        :period => Time.local(2011, (i+1)*3),
                        :student_id => student.id) 
      Section.create(:exam_assessment_id => e.id, :score => rand(250), :name => "Reading")
      Section.create(:exam_assessment_id => e.id, :score => rand(250), :name => "Language Arts")
      Section.create(:exam_assessment_id => e.id, :score => rand(250), :name => "Math")
    end
  end
