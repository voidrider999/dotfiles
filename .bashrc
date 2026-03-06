#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias l='ls -al'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

alias aider='docker run -it --rm --user $(id -u):$(id -g) --volume $(pwd):/app --network host -e OLLAMA_API_BASE=http://127.0.0.1:11434 docker.io/paulgauthier/aider-full --model ollama/qwen2.5-coder:7b-instruct-q4_K_M --edit-format whole --no-browser'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
start-conda() {
	__conda_setup="$('/home/vlad/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
	    eval "$__conda_setup"
	else
	    if [ -f "/home/vlad/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/vlad/anaconda3/etc/profile.d/conda.sh"
	    else
		export PATH="/home/vlad/anaconda3/bin:$PATH"
	    fi
	fi
	unset __conda_setup
}
# <<< conda initialize <<<

