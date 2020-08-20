# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Seeding Languages class
languages = [{prog_lang:"Ruby"},
    {prog_lang:"Python"},
    {prog_lang:"Java"},
    {prog_lang:"Javascript"},
    {prog_lang:"CSS"},
    {prog_lang:"HTML"},
    {prog_lang:"C++"},
    {prog_lang:"C"},
    {prog_lang:"Rails"},
    {prog_lang:"PHP"},
    {prog_lang:"SQL"}]

languages.each {|lang| Language.create(lang)}

# Seeding InterviewType class
interviewtype = [{interview_type:"Technical"},
    {interview_type:"Fit"},
    {interview_type:"Informational"},]

interviewtype.each { |itype| InterviewType.create(itype)}

# Seeding Interviewee class
interviewees = [{name:"Joe Smith", age: 40, username: "1234", password: "1234"},
{name:"Jill Doe", age: 45,username: "1235", password: "1234"},
{name:"Jack Ripper", age: 30,username: "1236", password: "1234"}]

interviewees.each {|interviewee| Interviewee.create(interviewee)}

# Seeding Interviewer class
interviewers = [{name:"Jack Higgens", years_of_experience: 13, current_role:"Product Manager", current_company: "Facebook", interview_price: 200, language_id:Language.all.sample.id,username: "1237", password: "1234" },
{name:"Steven King", years_of_experience: 3, current_role: "Junior Developer", current_company: "Microsoft", interview_price: 25, language_id:Language.all.sample.id,username: "1238", password: "1234"  },
{name:"Mark Perry", years_of_experience: 8, current_role: "Senior Manager", current_company: "Amazon", interview_price: 50,language_id:Language.all.sample.id,username: "1239", password: "1234"  }]

interviewers.each {|interviewer| Interviewer.create(interviewer)}

# Random Datetime function
def time_rand from = 0.0, to = Time.now
    value = Time.at(from + rand * (to.to_f - from.to_f))
end

# Seeding Appointment class 
10.times do
    Appointment.create(interviewer_id: Interviewer.all.sample.id,
        interviewee_id: Interviewee.all.sample.id, 
        language_id: Language.all.sample.id,
        date: time_rand,
        note: "Enter Interview Notes Here", 
        link: "Insert Zoom Meeting Link Here",
        difficulty: rand(1..10),
        interview_type_id: InterviewType.all.sample.id)
end