*** Variables ***
@{fruits}       apple   banana      mango

*** Test Cases ***
print_fruits
    FOR   ${fru}    IN      @{fruits}
        continue for loop if
    END
