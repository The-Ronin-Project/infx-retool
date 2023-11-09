INSERT INTO surveys.branching_logic 
(uuid, answer_uuid, question_group_uuid, next_question_group, specific_next_question)
VALUES
({{uuid.v1()}}, {{load_questions_and_answers.data.answer_uuid[i]}}, {{urlparams.uuid}}, {{dropdown1[i].value == 1 ? true : null}}, {{typeof(dropdown1[i].value) == 'string' ? dropdown1[i].value : null}}) 
ON CONFLICT on constraint answer_qg_unique
DO 
   UPDATE SET next_question_group={{dropdown1[i].value == 1 ? true : null}}, specific_next_question={{typeof(dropdown1[i].value) == 'string' ? dropdown1[i].value : null}};