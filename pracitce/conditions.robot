*** Variables ***
${student}          harsha

*** Test Cases ***
testcase_name
    RUN KEYWORD IF      '${student}'=='harshavardhan'      print_good_morning
    ...     ELSE IF     '${student}'=='padma'       print_good_bight
    ...     ELSE        print_bye


*** Keywords ***
print_good_morning
        log to console          \n\n\t\thello! good morning!!\n\
        log to console          \t\ti'm taking python sessions.\n\n

print_good_bight
        log to console          \n\n\t\thello! good night!!\n\
        log to console          \t\ti'm taking java sessions.\n\n

print_bye
        log to console          \n\n\t\thello! bye!!\n\
        log to console          \t\ti'm taking robot sessions.\n\n