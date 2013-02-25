@echo *
@echo *   MALTED   DEVELOPER  ENVIRONMENT 
@echo * 
@echo *      loading classes ...
@echo * 
@java -cp .;classes\malted.jar;classes\parser.jar;classes\jaxp.jar;classes\jhall.jar;classes\Client.jar;classes\log4j-1.2.3.jar;classes\jdic.jar;lib_jmf\jmf.jar;\lib_jmf\sound.jar -ms16M -mx40M com.malted.dve.MaltedTeacher 0 %1 %2 %3 %4 %5 %6 %7 %8 %9
cls