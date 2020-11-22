#ifndef BMP280_TASK_H
#define BMP280_TASK_H

void BMP280_TASK(void *pvParameters);
void printValues(int);
void BMP280_Sleep(int device_address);

#endif /*BMP280_TASK_H*/
