docker run -ti \
        --rm \
        --entrypoint=sh \
        -v ${PWD}/res:/etc/mosdns/res \
        -w /etc/mosdns/res \
irinesistiana/mosdns /etc/mosdns/res/update-res.sh