Insert into rxnorm_extension.ingredient
Values (uuid_generate_v4(), {{ search_ingredient_input.value }}, null, 'false', null)