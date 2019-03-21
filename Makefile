ARG=
play-ruby:
	@echo "Qual aposta quer fazer. Ex: ARG='megasena' ou ARG='quina'"
	ruby ruby/lib/run_$(ARG).rb