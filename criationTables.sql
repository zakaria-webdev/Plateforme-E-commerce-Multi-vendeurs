-- VENDEUR
CREATE TABLE VENDEUR (
  id_vend NUMBER PRIMARY KEY,
  nomVend VARCHAR2(100) NOT NULL,
  email VARCHAR2(100),
  telephone VARCHAR2(15),
  boutique VARCHAR2(100),
  date_inscription DATE DEFAULT SYSDATE
);

-- CLIENT
CREATE TABLE CLIENT (
  id_cli NUMBER PRIMARY KEY,
  nomCli VARCHAR2(100) NOT NULL,
  email VARCHAR2(100),
  telephone VARCHAR2(15),
  adresse VARCHAR2(200),
  date_inscription DATE
);

--	FACTURE_CLIENT 
CREATE TABLE FACTURE_CLIENT (
  id_facture NUMBER PRIMARY KEY,
  date_commande DATE NOT NULL,
  statut VARCHAR2(20) DEFAULT 'En attente' NOT NULL,
  id_cli NUMBER NOT NULL,
  CONSTRAINT fk_facture_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);
-- CATEGORIE
CREATE TABLE CATEGORIE (
  id_cat NUMBER PRIMARY KEY,
  nom VARCHAR2(50) NOT NULL
);

-- PRODUIT
CREATE TABLE PRODUIT (
  id_prod NUMBER PRIMARY KEY,
  nomProd VARCHAR2(100) NOT NULL,
  description VARCHAR2(500),
  prix NUMBER(10, 2) DEFAULT 0 CHECK (prix>=0),
  quantite_stock NUMBER DEFAULT 0 CHECK (quantite_stock>=0),
  id_vend NUMBER NOT NULL,
  id_cat NUMBER NOT NULL,
  CONSTRAINT fk_produit_vend FOREIGN KEY(id_vend) REFERENCES vendeur(id_vend),
  CONSTRAINT fk_produit_cat FOREIGN KEY(id_cat) REFERENCES categorie(id_cat)
);

-- COMMANDE
CREATE TABLE COMMANDE (
  id_comm NUMBER PRIMARY KEY,
  date_commande DATE DEFAULT SYSDATE NOT NULL,
  statut VARCHAR2(20)DEFAULT 'En cours' NOT NULL,
  montant_total NUMBER(12,2) DEFAULT 0 NOT NULL CHECK (montant_total >= 0), 
  id_cli NUMBER NOT NULL,
  CONSTRAINT fk_commande_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);

-- LIGNE_COMMANDE
CREATE TABLE LIGNE_COMMANDE (
  id_comm NUMBER NOT NULL,
  id_prod NUMBER NOT NULL,
  quantite NUMBER NOT NULL CHECK(quantite > 0),
  prix_unitaire NUMBER(10,2) NOT NULL CHECK (prix_unitaire >= 0),
  CONSTRAINT pk_ligne_commande PRIMARY KEY (id_comm, id_prod),
  CONSTRAINT fk_ligne_commande_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm),
  CONSTRAINT fk_ligne_commande_prod FOREIGN KEY(id_prod) REFERENCES produit(id_prod)
);

-- PAIEMENT
CREATE TABLE PAIEMENT (
  id_paim NUMBER PRIMARY KEY,
  date_paiement DATE,
  montant NUMBER(12,2) CHECK (montant >= 0),
  methode VARCHAR2(100),
  statut VARCHAR2(20),
  id_comm NUMBER NOT NULL,
  CONSTRAINT fk_paiment_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm)

);

-- 4.	TRANSPORTEUR
CREATE TABLE TRANSPORTEUR (
  id_trans NUMBER PRIMARY KEY,
  nomTrans VARCHAR2(100) NOT NULL,
  telephone VARCHAR2(15),
  email VARCHAR2(100)
);
-- EXPEDITION
CREATE TABLE EXPEDITION (
  id_comm NUMBER NOT NULL,
  id_trans NUMBER NOT NULL,
  numero_suivi number,
  statut VARCHAR2(20),
  date_expedition DATE,
  CONSTRAINT pk_ligne_commande PRIMARY KEY (id_comm, id_trans),
  CONSTRAINT fk_expedition_comm FOREIGN KEY(id_comm) REFERENCES commande(id_comm),
  CONSTRAINT fk_expedition_trans FOREIGN KEY(id_trans) REFERENCES transporteur(id_trans)
);

-- AVIS
CREATE TABLE AVIS (
  id_prod NUMBER NOT NULL,
  id_cli NUMBER NOT NULL,
  note NUMBER(1) NOT NULL CHECK (note BETWEEN 1 AND 5),
  commentaire VARCHAR2(1000),
  date_avis DATE DEFAULT SYSDATE,
  CONSTRAINT pk_avis PRIMARY KEY (id_prod, id_cli),
  CONSTRAINT fk_avis_prod FOREIGN KEY(id_prod) REFERENCES produit(id_prod),
  CONSTRAINT fk_avis_cli FOREIGN KEY(id_cli) REFERENCES client(id_cli)
);

-- COUPON
CREATE TABLE COUPON (
  code VARCHAR2(20) PRIMARY KEY,
  taux NUMBER(5,2) NOT NULL CHECK (taux >= 0),
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
