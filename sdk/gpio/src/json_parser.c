#include <stdio.h>
#include <string.h>
#include <json-c/json.h>

#include"json_parser.h"

void parse_JSON(json_t *config){
	FILE *fp;
	char buffer[1024];
	struct json_object *parsed_json;
	struct json_object *users;
	struct json_object *user;
	struct json_object *name;
	struct json_object *design;
	struct json_object *pblock;
	struct json_object *pins;
	struct json_object *pin;
	int n_pins;

	fp = fopen("/home/root/par/test.json","r");
	fread(buffer, 1024, 1, fp);
	fclose(fp);

	parsed_json = json_tokener_parse(buffer);

    json_object_object_get_ex(parsed_json, "users", &users);

    config->length = json_object_array_length(users);
    for(int i = 0; i < json_object_array_length(users); i++){
        user = json_object_array_get_idx(users, i);

        json_object_object_get_ex(user, "user", &name);
        json_object_object_get_ex(user, "design", &design);
        json_object_object_get_ex(user, "pblock", &pblock);
        json_object_object_get_ex(user, "pins", &pins);


        strcpy(config->users[i], json_object_get_string(name));
        strcpy(config->designs[i], json_object_get_string(design));
        config->pblocks[i] = json_object_get_int(pblock);

        //printf("User: %s\n", json_object_get_string(name));
        //printf("Design: %s\n", json_object_get_string(design));
        //printf("PBlock: %d\n", json_object_get_int(pblock));

        n_pins = json_object_array_length(pins);
        config->pin_count[i] = n_pins;
        //printf("Found %d pins\n",n_pins);

        for(int j=0;j<n_pins;j++) {
            pin = json_object_array_get_idx(pins, j);
            config->pins[i][j] = json_object_get_int(pin);
            //printf("%d. %s\n",j+1,json_object_get_string(pin));
        }

    }
}
