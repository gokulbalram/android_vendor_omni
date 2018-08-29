add_json_str_omitempty = $(if $(strip $(2)),$(call add_json_str, $(1), $(2)))

_contents := $(_contents)    "Lineage":{$(newline)

 # See build/core/soong_config.mk for the add_json_* functions you can use here.
$(call add_json_bool, Has_legacy_camera_hal1,                $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)))

 # This causes the build system to strip out the last comma in our nested struct, to keep the JSON valid.
_contents := $(_contents)__SV_END

 _contents := $(_contents)    },$(newline)
