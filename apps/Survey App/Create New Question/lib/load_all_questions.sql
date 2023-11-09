select * from surveys.question
where historical_question is FALSE
order by question_text asc;