#include <stdio.h>
#include "dht11.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "pin_definition.h"

void app_main(void)
{
    DHT11_init(DHT11_PIN);
    struct dht11_reading reading = DHT11_read();
    
    while (1)
    {
        if(reading.status == DHT11_OK){
            printf("Temperature: %d\n", reading.temperature);
            printf("Humidity: %d\n", reading.humidity);
        }
        vTaskDelay(pdMS_TO_TICKS(20000)); 
    }
    
}
