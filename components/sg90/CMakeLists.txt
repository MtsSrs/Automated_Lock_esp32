idf_component_register(
    SRCS "src/iot_servo.c"
    INCLUDE_DIRS "inc"
    REQUIRES driver esp_timer
)