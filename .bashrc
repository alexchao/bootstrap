__git_ps1()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " %s" "${b##refs/heads/}";
    fi
}
export PS1='\[\e[0;33m\]\t\[\e[0;39m\] \[\e[1;90m\]-\[\e[0;39m\] \[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;91m\]\h\[\e[0;39m\]:\[\e[0;90m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " %s")\[\e[0;39m\]
\[\e[1;90m\]>>\[\e[m\] '
