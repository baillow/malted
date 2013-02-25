@echo *
@echo *   MALTED   RUNTIME  ENVIRONMENT 
@echo * 
@echo *      loading classes ...
@echo * 
@java -cp .;classes\malted.jar;classes\parser.jar;classes\jaxp.jar;classes\jhall.jar;lib_jmf\jmf.jar;\lib_jmf\sound.jar -ms16M -mx40M com.malted.rts.RTS -EDIT %1 %2 %3 %4 %5 %6 %7 %8 %9
