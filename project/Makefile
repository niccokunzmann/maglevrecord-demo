
nothing:


example:
	cat .example_model.rb > ./app/models/my_model.rb

example2:
	cat .example_model2.rb > ./app/models/my_model2.rb

examples: example2 example

migrations: watch_migrations

watch_migrations:
	../demo/migrations.sh

files: watch_files

watch_files:
	../demo/files_view.sh

changes: watch_changes

watch_changes:
	../demo/changes.sh

new_stone:
	../demo/new_stone.sh
	$(shell export MAGLEV_OPTS=-W0)
	
newstone:	new_stone

	
clean: new_stone
	rm -r ./migrations
	rm ./app/models/my_model.rb
