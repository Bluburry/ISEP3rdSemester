#include "header.h"

void    insertDataReceived(int nData,int nSensores, char **data, t_sensor **sensores) {
        int idSensor = 0, value = 0, timestamp = 0;

        for(int i = 0, j = 0; i< nData; i++, j = 0) {
                while(data[i][j] != ':'){j++;}
                j++;

                idSensor = atoi(&data[i][j]) - 1;

                if(idSensor < 0 || idSensor > nSensores) continue;

                if (sensores[idSensor]->median == -1) continue;

                while(data[i][j] != ':'){j++;}
                j++;
                while(data[i][j] != ':'){j++;}
                j++;

                value = atoi(&data[i][j]) * 100;
                while(data[i][j] != '.'){j++;}
                j++;
                value += atoi(&data[i][j]);

                while(data[i][j] != ':'){j++;}
                j++;
                while(data[i][j] != ':'){j++;}
                j++;

                timestamp = atoi(&data[i][j]);

                if (sensores[idSensor]->prev_time != -1 && \
                        ((timestamp - sensores[idSensor]->prev_time) > \
                        sensores[idSensor]->timeout)) {
                        sensores[idSensor]->median = -1;
                        continue;
                }
                sensores[idSensor]->prev_time = timestamp;

                enqueue_value(sensores[idSensor]->buffer->crclr_buffer, \
                        sensores[idSensor]->buffer->crclr_size, \
                        &sensores[idSensor]->buffer->crclr_read, \
                        &sensores[idSensor]->buffer->crclr_write, value);
        }
}
