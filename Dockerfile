# Utiliser l'image officielle Node.js
FROM node:16

# Créer un répertoire de travail pour l'application
WORKDIR /app

# Copier le package.json dans le répertoire de travail
COPY package.json /app/

# Installer les dépendances du projet
RUN npm install

# Copier tous les autres fichiers du projet
COPY . /app/

# Exposer le port sur lequel ton application fonctionne (si nécessaire)
EXPOSE 8080

# Lancer l'application avec la commande start
CMD ["node", "index.js"]
