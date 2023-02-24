FROM node:bullseye-slim

WORKDIR /app/

ENV OPENAI_API_KEY "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"
ENV PREFIX_ENABLED "true"

COPY . .

RUN npm install
RUN npm install vite-node
RUN apt-get update
RUN apt-get install chromium -y

CMD ["npm", "run", "start"]
