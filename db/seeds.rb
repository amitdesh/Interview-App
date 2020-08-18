# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Interviewer.destroy_all
Interviewee.destroy_all
Appointment.destroy_all
Language.destroy_all


languages = [
    {prog_lang:"Ruby"},
    {prog_lang:"Python"},
    {prog_lang:"Java"},
    {prog_lang:"Javascript"},
    {prog_lang:"CSS"},
    {prog_lang:"HTML"},
    {prog_lang:"C++"},
    {prog_lang:"C"},
    {prog_lang:"Rails"},
    {prog_lang:"PHP"},
    {prog_lang:"SQL"}
]
languages.each { |lang| Language.create(lang)}

interviewtype = [
    {interview_type:"Technical"},
    {interview_type:"Fit"},
    {interview_type:"Informational"},
]
interviewtype.each { |itype| InterviewType.create(itype)}

interviewees = [
    {name:"Joe Smith", age: 40},
{name:"Jill Doe", age: 45},
{name:"Jack Ripper", age: 30}
]
interviewees.each { |interviewee| Interviewee.create(interviewee)}

interviewers = [
{name:"Jack Higgens", years_of_experience: 13, current_role:"teacher", current_company:"doctor_inc", interview_price: 200, language_id:Language.all.sample.id },
{name:"Steven King", years_of_experience: 3, current_role:"dev", current_company:"microsoft", interview_price: 10, language_id:Language.all.sample.id  },
{name:"Mark Perry", years_of_experience: 8, current_role:"dev", current_company:"amazon", interview_price: 45,language_id:Language.all.sample.id  }
]
interviewers.each { |interviewer| Interviewer.create(interviewer)}


def time_rand from = 0.0, to = Time.now
    Time.at(from + rand * (to.to_f - from.to_f))
end

10.times do
    Appointment.create(
        interviewer_id:Interviewer.all.sample.id,
        interviewee_id:Interviewee.all.sample.id, 
        language_id: Language.all.sample.id,
        date: time_rand,
        note:"Enter Interview Notes Here", 
        link:"Insert Zoom Meeting Link Here",
        difficulty:rand(1..10),
        interview_type:InterviewType.all.sample.id
        )
end