*** Test Cases ***
test1
    ${x}=  set variable    convert to integer       10
    run keyword if      ${x}==10    readme
    ...                 ELSE        readme2
*** Keywords ***
readme
    log to console      harsha vardhan

readme2
    log to console      harsha 2