# .bashrc

#exec 3>&2 2> >(tee /tmp/sample-time.$$.log |
#                 sed -u 's/^.*$/now/' |
#                 date -f - +%s.%N >/tmp/sample-time.$$.tim)
#set -x

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

for rc in ~/.bashrc.d/*; do
    . "$rc"
done; unset rc
