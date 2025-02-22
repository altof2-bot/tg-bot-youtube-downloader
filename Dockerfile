# Utiliser l'image officielle Node.js
FROM node:16

# Créer un répertoire de travail pour l'application
WORKDIR /app

# Copier les fichiers du projet local dans le conteneur
COPY . /app

# Installer les dépendances du projet
RUN npm install

# Exposer le port sur lequel ton application fonctionne (si nécessaire)
EXPOSE 8080

# Lancer l'application avec la commande start
CMD ["node", "index.js"]  # Remplace "index.js" par le fichier principal de ton bot
