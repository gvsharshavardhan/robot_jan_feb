*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://www.youtube.com/playlist?list=PLFGoYjJG_fqp9BaKRnU26eJqD8zFSCAPd
${xpath}        xpath://*[@id='contents']//*[@id='video-title' and contains(@aria-label, 'by Naveen AutomationLabs')]
*** Test Cases ***
fetchurls
    open browser  ${url}  ${browser}
#    @{ll}=      find elements       ${xpath}
    ${links_count}=     get element count   ${xpath}			#links count

	@{Link_items}=  create list							#create's a empty list

	FOR     ${i}	    IN RANGE	1	${links_count}+1
		log to console      \n\n
		${link_text}=   get text      xpath:(//*[@id='contents']//*[@id='video-title' and contains(@aria-label, 'by Naveen AutomationLabs')])[${i}]
	 	log to console      ${link_text}
	END
    close browser
