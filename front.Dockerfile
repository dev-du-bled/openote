FROM archlinux:base
COPY front /app/src/
RUN pacman -Syu curl bash unzip npm --needed --noconfirm
RUN curl -fsSL https://bun.sh/install | bash
RUN cp -r /root/.bun/bin/* /usr/bin
WORKDIR /app/src/
RUN bun i
RUN npm run build # here we use npm otherwise the build hangs with bun

ENTRYPOINT [ "bun", ".output/server/index.mjs" ]
