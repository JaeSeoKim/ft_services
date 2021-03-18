#!/bin/sh

# Color
CL_BOLD="\e[1m"
CL_DIM="\e[2m"
CL_UDLINE="\e[4m"

NO_COLOR="\e[0m"

FG_WHITE="${NO_COLOR}\e[0;37m"
FG_TEXT="${NO_COLOR}\e[38;2;189;147;249m"
FG_TEXT_PRIMARY="${NO_COLOR}${CL_BOLD}\e[38;2;255;121;198m"

NL="${NO_COLOR}\n"

# START!

printf "☸ ${FG_TEXT}Setup ${FG_TEXT_PRIMARY}ft_services${FG_TEXT}!${NL}"

# build all docker containers
printf "🐳 ${FG_TEXT}Build all ${FG_TEXT_PRIMARY}Docker Images${FG_TEXT}!${NL}"
# build nginx
printf "🚏 ${FG_TEXT}Build ${FG_TEXT_PRIMARY}nginx Images${FG_TEXT}!${NL}"
docker build -t nginx ./srcs/nginx


