select display, uuid from rxnorm_extension.ingredient
where display like {{'%'+search_ingredient_input.value+'%'}}