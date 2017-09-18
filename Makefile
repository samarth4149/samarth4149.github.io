DOCS=index resume projects courses

.PHONY : update
update : 
	@echo -n 'Copying to server...'
	@git add --all .
	@git commit -m "Something"
	@git push
	@echo ' done.'

%.html : %.jemdoc MENU
	jemdoc -o $@ $<

.PHONY : clean
clean :
	-rm *.html