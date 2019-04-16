FROM    ubuntu:18.04
ENV     HOMEDIR=web

#
# apt-get installation
#
RUN     apt-get update && apt-get install ruby rails -y
RUN     mkdir $HOMEDIR
RUN     apt-get install net-tools        -y
RUN     apt-get install ruby-dev         -y
RUN     apt-get install vim              -y

#
# resource allocation and basic setups
#
# COPY    .     $HOMEDIR
# WORKDIR $HOMEDIR
# RUN     bundle install
# RUN     rake db:fixtures:load FIXTURES=auth_levels,users
# RUN     cp scripts/restart /bin
