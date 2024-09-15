idf_component_register(
    SRCS "src/dht11.c"
    INCLUDE_DIRS "inc"
    REQUIRES driver esp_timer
)