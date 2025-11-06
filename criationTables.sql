-- VENDEUR
CREATE TABLE VENDEUR (
  id_vend NUMBER PRIMARY KEY,
  nomVend VARCHAR2(100),
  email VARCHAR2(100),
  telephone VARCHAR2(15),
  boutique VARCHAR2(100),
  date_inscription DATE
);

-- CLIENT
CREATE TABLE CLIENT (
  id_cli NUMBER PRIMARY KEY,
  nomCli VARCHAR2(100),
  email VARCHAR2(100),
  telephone VARCHAR2(15),
  adresse VARCHAR2(200),
  date_inscription DATE
);

--	FACTURE_CLIENT 
CREATE TABLE FACTURE_CLIENT (
  id_facture NUMBER PRIMARY KEY,
  date_commande DATE ,
  statut VARCHAR2(20),
  id_cli NUMBER ,
  CONSTRAINT fk_facture_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);
-- CATEGORIE
CREATE TABLE CATEGORIE (
  id_cat NUMBER PRIMARY KEY,
  nom VARCHAR2(50)
);

-- PRODUIT
CREATE TABLE PRODUIT (
  id_prod NUMBER PRIMARY KEY,
  nomProd VARCHAR2(100),
  description VARCHAR2(500),
  prix NUMBER(8, 2),
  quantite_stock NUMBER,
  id_vend NUMBER,
  id_cat NUMBER,
  CONSTRAINT fk_produit_vend FOREIGN KEY(id_vend) REFERENCES vendeur(id_vend),
  CONSTRAINT fk_produit_cat FOREIGN KEY(id_cat) REFERENCES categorie(id_cat)
);

-- COMMANDE
CREATE TABLE COMMANDE (
  id_comm NUMBER PRIMARY KEY,
  date_commande DATE,
  statut VARCHAR2(20),
  montant_total NUMBER(10,2), -- recalculé à chaque changement
  id_cli NUMBER ,
  CONSTRAINT fk_commande_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);

-- LIGNE_COMMANDE
CREATE TABLE LIGNE_COMMANDE (
  id_comm NUMBER,
  id_prod NUMBER,
  quantite NUMBER,
  prix_unitaire NUMBER(8,2),
  CONSTRAINT fk_ligne_commande_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm),
  CONSTRAINT fk_ligne_commande_prod FOREIGN KEY(id_prod) REFERENCES produit(id_prod)
);

-- PAIEMENT
CREATE TABLE PAIEMENT (
  id_paim NUMBER PRIMARY KEY,
  date_paiement DATE,
  montant NUMBER(10,2),
  methode VARCHAR2(100),
  statut VARCHAR2(20),
  id_comm NUMBER ,
  CONSTRAINT fk_paiment_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm)

);

-- 4.	TRANSPORTEUR
CREATE TABLE TRANSPORTEUR (
  id_trans NUMBER PRIMARY KEY,
  nomTrans VARCHAR2(100),
  telephone VARCHAR2(15),
  email VARCHAR2(100)
);
-- EXPEDITION
CREATE TABLE EXPEDITION (
  id_comm NUMBER ,
  id_trans NUMBER ,
  numero_suivi number,
  statut VARCHAR2(20),
  date_expedition DATE,
  CONSTRAINT fk_expedition_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm),
  CONSTRAINT fk_expedition_trans FOREIGN KEY(id_trans) REFERENCES transporteur(id_trans)
);

-- AVIS
CREATE TABLE AVIS (
  id_prod NUMBER ,
  id_cli NUMBER ,
  note NUMBER(1),
  commentaire VARCHAR2(1000),
  date_avis DATE,
  CONSTRAINT fk_avis_prod FOREIGN KEY(id_prod) REFERENCES produit(id_prod),
  CONSTRAINT fk_avis_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);

-- COUPON
CREATE TABLE COUPON (
  code VARCHAR2(20) PRIMARY KEY,
  taux NUMBER(5,2) NOT NULL,
  date_validite DATE NOT NULL
);

-- LOG_ACTIONS
CREATE TABLE LOG_ACTIONS (
  id_log_action NUMBER PRIMARY KEY,
  action_type VARCHAR2(50) NOT NULL,
  user_id NUMBER,
  date_action TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  details VARCHAR2(4000)
);
