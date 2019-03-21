ARG=
play-ruby:
	@echo "Qual aposta quer fazer. Ex: ARG='mega_sena' ou ARG='quina'"
	ruby ruby/lib/run_$(ARG).rb