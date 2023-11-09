Insert into rxnorm_extension.scd_generic_drug (uuid, display, dose_form_uuid)
Values (uuid_generate_v4(), {{ final_scd_display.value }}, {{select_dose_form.selectedItem.uuid}})