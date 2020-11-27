Auteurs : Lucas Bernigaud Samatan, Charlotte Dubec, Guillaume Studer et Elodie Yan

Decription :

Nous avons essayé de créer un container pour faire les graphiques correspondants aux données de fin de l'analyse produite lors du projet Hackathon 2020 (classe AMI2B, groupe6)
Voici le lien vers le github correspondant à cette analyse, où vous trouverez le pipeline complet ainsi que les résultats et le rapport produit : https://github.com/elodieyan/hackathon_groupe6

Dans cette partie, nous avons donc voulu créer un container permettant de créer des graphiques via snakemake à partir du fichier .Rdata contenant les données de la fin de notre analyse.

Ce GitHub contient donc : 
 - un fichier Singularity qui est le fichier recette pour Singularity Hub
 - un dossier dock contenant un fichier Dockerfile qu est le fichier recette pour Docker Hub (ne fonctionne pas du tout)
 - un dossier Workflow_and_results contenant les fichiers à executer par l'appel du fichier script_graphs_snakemake dans snakemake qui appelle lui même le container créé sur Singularity Hub et le fichier script_graphs.R, qui travaille avec les données issues de l'analyse principale, contenues dans le fichier fichier.Rdata.
 - Une image qui est le résultat de l'ACP, car le reste dans les fichiers d'exécution est commenté puisque le container ne contient pas le package EnhancedVolcano qui permet de générer le graphique sur l'analyse de l'expression différentielle des gènes.
 
 Après s'être assurés d'avoir snakemake et singularity sur la machine utilisée, il faut donc cloner ce repository puis lancer les commandes :
  cd Workflow_and_results
  screen -m -d snakemake --use-singularity --cores 1 -s script_graphs_snakemake
