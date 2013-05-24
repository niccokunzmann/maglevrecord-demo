
nothing:


example:
	cat .example_model.rb > ./app/models/my_model.rb

watch_files:
	../demo/files_view.sh

watch_changes:
	../demo/changes.sh

new_stone:
	../demo/new_stone.sh
	export MAGLEV_OPTS=-W0
	
newstone:	new_stone

	
clean: new_stone
	rm -r ./migrations
	rm ./app/models/my_model.rb
