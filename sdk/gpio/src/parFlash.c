#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>

int flash_par_bitfile(char *name){
    char file_name[128];
    int fd;
    int ret;
    int size = 9999999; //TODO get size of PBlock
    char buffer[size];

    if (name != '\0') {
        // compose file name
        sprintf(file_name, "/media/card/partial/%s", name);

        // open partial bitfile
        fd = open(file_name, O_RDONLY);
        if (fd < 0) {
            printf("failed to open partial bitfile %s\n", file_name);
            return -1;
        }

        // read partial bitfile into buffer
        ret = read(fd, buffer, size);
        if (ret < 0) {
            printf("failed to read partial bitfile %s\n", file_name);
            close(fd);
            return -1;
        }

        // close file handle
        close(fd);
    }

    // Set is_partial_bitfile device attribute
    fd = open("/sys/devices/soc0/amba/f8007000.devcfg/is_partial_bitstream", O_RDWR);
    if (fd < 0) {
        printf("failed to set xdevcfg attribute 'is_partial_bitstream'\n");
        return -1;
    }
    write(fd, "1", 2);
    close(fd);

    // Write partial bitfile to xdevcfg device
    fd = open("/dev/xdevcfg", O_RDWR);
    if (fd < 0) {
        printf("failed to open xdevcfg device\n");
        return -1;
    }
    write(fd, buffer, size);
    close(fd);

    return 0;
}