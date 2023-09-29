*** Settings ***
Resource    ${KEYWORDPATH}common_keywords.robot
Resource    ${VARIABLEPATH}homepage_variables.robot

*** Keywords ***
#==========================================================#
#                    GIVEN 
#==========================================================#
User Is In Homepage
    Navigate To URL    ${URL}
    wait until element is visible    ${feedback_btn}
    title should be    Best value phone plans in Australia | amaysim

User Goes To Sim Plans
    mouse over    ${homepage_nav_simplans}

User Selects Seven Day Sim Plans
    click element    ${homepage_nav_simplans_sevenday}
    wait until element is not visible    ${homepage_nav_simplans_sevenday}
    wait until element is visible    ${feedback_btn}
    title should be    7 Day SIM Plans | amaysim

#==========================================================#
#                    WHEN 
#==========================================================#


#==========================================================#
#                    THEN 
#==========================================================#


#==========================================================#
#              INTERNAL KEYWORDS 
#==========================================================#