*** Settings ***


*** Variables ***
${xyz}          padmapriya
${abc}          ${100}
${fload_num}    ${12.67}
@{l1}           ${12.67}        java        ${100}
&{d1}           name=padma      age=${20}      listl=@{l1}

*** Test Cases ***
testcase1
#     log many       &{d1}
#    ${type_xyz}=      Evaluate           type($abc)
#    log to console      ${type_xyz}

#    ${flag}=    convert to integer      ${abc}
#    ${flag_type}=    Evaluate    type($flag)
#    ${type_float}=      Evaluate           type($fload_num)
#    log to console      ${type_float}


#    log to console      ${abc}
#    log to console      ${fload_num}
#     ${text}        set variable    hello,world!!
#     log to console     ${text}
#
#     ${ll1}     create list     apple       banana          mango
#     log to console     ${ll1}
#
#    ${d12}      create dictionary   key1=value1     key2=value2
#    log to console      ${d12}
#
#    ${a}        ${b}        ${c}        create list         aabbcc          xxyyzz          llmmnn
#    log to console      ${a}
#    log to console      ${b}
#    log to console      ${c}


#evaluate  is for writing python code inside robot file
    ${eval}     evaluate    datetime.date.today()
    log to console      \n\n\t\t${eval}\n\n

    &{dict123}       create dictionary
    ...         key1=apple
    ...         key2=banana

    log many      &{dict123}

    log to console      ${CURDIR}
    log to console      \n\n\t\t${EMPTY}\n\n
    log to console      ${False}
    log to console      ${True}

*** Keywords ***
