

--VENDEUR
INSERT INTO VENDEUR (id_vend, nomVend, email, telephone, boutique, date_inscription) VALUES (1, 'ElectroMaroc', 'contact@electromaroc.ma', '0611223344', 'ElectroMaroc Store', TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO VENDEUR (id_vend, nomVend, email, telephone, boutique, date_inscription) VALUES (2, 'FashionStyle', 'support@fashionstyle.ma', '0655667788', 'FashionStyle Boutique', TO_DATE('2024-02-20', 'YYYY-MM-DD'));
INSERT INTO VENDEUR (id_vend, nomVend, email, telephone, boutique, date_inscription) VALUES (3, 'LivreMoi', 'contact@livremoi.ma', '0622334455', 'LivreMoi Librairie', TO_DATE('2024-02-28', 'YYYY-MM-DD'));
INSERT INTO VENDEUR (id_vend, nomVend, email, telephone, boutique, date_inscription) VALUES (4, 'HomeDecor', 'info@homedecor.ma', '0677889900', 'HomeDecor and Co', TO_DATE('2024-03-05', 'YYYY-MM-DD'));
INSERT INTO VENDEUR (id_vend, nomVend, email, telephone, boutique, date_inscription) VALUES (5, 'SportPlus', 'sav@sportplus.ma', '0644556677', 'SportPlus Equipments', TO_DATE('2024-04-12', 'YYYY-MM-DD'));

--CLIENT
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (101, 'Ahmed Alaoui', 'ahmed.alaoui@email.com', '0699887766', '123 Rue de la Liberte, Casablanca', TO_DATE('2024-03-10', 'YYYY-MM-DD'));
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (102, 'Fatima Zahra', 'fatima.zahra@email.com', '0612345678', '456 Avenue Mohammed V, Rabat', TO_DATE('2024-04-05', 'YYYY-MM-DD'));
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (103, 'Youssef Bennani', 'youssef.bennani@email.com', '0633221100', '789 Boulevard Hassan II, Marrakech', TO_DATE('2024-04-15', 'YYYY-MM-DD'));
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (104, 'Amina El Fassi', 'amina.elfassi@email.com', '0698765432', '10 Rue de Paris, Fès', TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (105, 'Mehdi Chafik', 'mehdi.chafik@email.com', '0666554433', '21 Avenue des FAR, Agadir', TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO CLIENT (id_cli, nomCli, email, telephone, adresse, date_inscription) VALUES (106, 'Salma Kadiri', 'salma.kadiri@email.com', '0610203040', '55 Rue de la Paix, Tanger', TO_DATE('2024-06-02', 'YYYY-MM-DD'));

--CATEGORIE
INSERT INTO CATEGORIE (id_cat, nom) VALUES (1, 'Électronique');
INSERT INTO CATEGORIE (id_cat, nom) VALUES (2, 'Mode');
INSERT INTO CATEGORIE (id_cat, nom) VALUES (3, 'Livres');
INSERT INTO CATEGORIE (id_cat, nom) VALUES (4, 'Maison and Cuisine');
INSERT INTO CATEGORIE (id_cat, nom) VALUES (5, 'Sports and Loisirs');

--PRODUIT
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (1001, 'Souris Gamer RGB', 'Souris optique avec éclairage RGB personnalisable', 350.00, 50, 1, 1);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (1002, 'Clavier Mécanique', 'Clavier mécanique pour gaming et productivité', 700.00, 30, 1, 1);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (1003, 'Casque Audio Bluetooth', 'Casque sans fil avec réduction de bruit active', 850.00, 40, 1, 1);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (2001, 'T-shirt Coton Bio', 'T-shirt en coton biologique, plusieurs couleurs disponibles', 150.00, 100, 2, 2);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (2002, 'Jeans Slim Fit', 'Jeans de haute qualité, coupe slim', 450.00, 80, 2, 2);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (2003, 'Veste en Cuir', 'Veste classique en cuir véritable pour homme', 1200.00, 25, 2, 2);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (3001, 'Le Petit Prince', 'Édition collector du célèbre conte de Saint-Exupéry', 120.00, 150, 3, 3);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (3002, 'L''Alchimiste', 'Le chef-d''œuvre de Paulo Coelho', 95.00, 200, 3, 3);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (4001, 'Machine à Café Espresso', 'Machine à café automatique avec broyeur intégré', 2500.00, 20, 4, 4);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (4002, 'Set de Couteaux de Cuisine', 'Ensemble de 8 couteaux en acier inoxydable', 550.00, 60, 4, 4);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (5001, 'Tapis de Yoga', 'Tapis de yoga antidérapant et écologique', 250.00, 120, 5, 5);
INSERT INTO PRODUIT (id_prod, nomProd, description, prix, quantite_stock, id_vend, id_cat) VALUES (5002, 'Haltères Ajustables', 'Paire d''haltères ajustables de 2 à 20 kg', 1500.00, 40, 5, 5);

--COMMANDE
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (501, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Livrée', 650.00, 101);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (502, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'Livrée', 1150.00, 102);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (503, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 'En cours', 0, 103);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (504, TO_DATE('2024-06-18', 'YYYY-MM-DD'), 'Expédiée', 0, 104);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (505, TO_DATE('2024-06-21', 'YYYY-MM-DD'), 'Annulée', 0, 105);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (506, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'En cours', 0, 101);
INSERT INTO COMMANDE (id_comm, date_commande, statut, montant_total, id_cli) VALUES (507, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'En cours', 0, 106);

--LIGNE_COMMANDE
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (501, 1001, 1, 350.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (501, 2001, 2, 150.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (502, 1002, 1, 700.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (502, 2002, 1, 450.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (503, 3001, 1, 120.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (503, 3002, 1, 95.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (504, 4002, 1, 550.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (505, 2003, 1, 1200.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (506, 1003, 2, 850.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (507, 5001, 1, 250.00);
INSERT INTO LIGNE_COMMANDE (id_comm, id_prod, quantite, prix_unitaire) VALUES (507, 5002, 1, 1500.00);

--TRANSPORTEUR
INSERT INTO TRANSPORTEUR (id_trans, nomTrans, telephone, email) VALUES (1, 'Aramex', '0522000000', 'support@aramex.ma');
INSERT INTO TRANSPORTEUR (id_trans, nomTrans, telephone, email) VALUES (2, 'Amana', '0802006060', 'contact@amana.ma');
INSERT INTO TRANSPORTEUR (id_trans, nomTrans, telephone, email) VALUES (3, 'DHL Express', '0529000111', 'dhl.ma@dhl.com');

--AVIS
INSERT INTO AVIS (id_prod, id_cli, note, commentaire, date_avis) VALUES (1001, 101, 5, 'Excellent produit, je recommande vivement!', TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO AVIS (id_prod, id_cli, note, commentaire, date_avis) VALUES (2002, 102, 4, 'Bonne qualité, mais la taille est un peu juste.', TO_DATE('2024-05-22', 'YYYY-MM-DD'));
INSERT INTO AVIS (id_prod, id_cli, note, commentaire, date_avis) VALUES (1002, 102, 5, 'Clavier très réactif, parfait pour le gaming.', TO_DATE('2024-05-25', 'YYYY-MM-DD'));
INSERT INTO AVIS (id_prod, id_cli, note, commentaire, date_avis) VALUES (3001, 103, 5, 'Un classique indémodable, très belle édition.', TO_DATE('2024-06-20', 'YYYY-MM-DD'));
INSERT INTO AVIS (id_prod, id_cli, note, commentaire, date_avis) VALUES (4002, 104, 3, 'Les couteaux sont corrects mais pas aussi affûtés que prévu.', TO_DATE('2024-06-25', 'YYYY-MM-DD'));

-- Inserting data into FACTURE_CLIENT
INSERT INTO FACTURE_CLIENT (id_facture, date_commande, statut, id_cli) VALUES (1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Payée', 101);
INSERT INTO FACTURE_CLIENT (id_facture, date_commande, statut, id_cli) VALUES (2, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'Payée', 102);
INSERT INTO FACTURE_CLIENT (id_facture, date_commande, statut, id_cli) VALUES (3, TO_DATE('2024-06-18', 'YYYY-MM-DD'), 'En attente', 104);

-- Inserting data into PAIEMENT
INSERT INTO PAIEMENT (id_paim, date_paiement, montant, methode, statut, id_comm) VALUES (1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 650.00, 'Carte de crédit', 'Complété', 501);
INSERT INTO PAIEMENT (id_paim, date_paiement, montant, methode, statut, id_comm) VALUES (2, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 1150.00, 'PayPal', 'Complété', 502);
INSERT INTO PAIEMENT (id_paim, date_paiement, montant, methode, statut, id_comm) VALUES (3, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 215.00, 'Virement bancaire', 'Complété', 503);
INSERT INTO PAIEMENT (id_paim, date_paiement, montant, methode, statut, id_comm) VALUES (4, TO_DATE('2024-06-18', 'YYYY-MM-DD'), 550.00, 'Carte de crédit', 'En attente', 504);

-- Inserting data into EXPEDITION
INSERT INTO EXPEDITION (id_comm, id_trans, numero_suivi, statut, date_expedition) VALUES (501, 1, '123456789', 'Livré', TO_DATE('2024-05-11', 'YYYY-MM-DD'));
INSERT INTO EXPEDITION (id_comm, id_trans, numero_suivi, statut, date_expedition) VALUES (502, 2, '987654321', 'Livré', TO_DATE('2024-05-13', 'YYYY-MM-DD'));
INSERT INTO EXPEDITION (id_comm, id_trans, numero_suivi, statut, date_expedition) VALUES (504, 3, '556677889', 'Expédié', TO_DATE('2024-06-19', 'YYYY-MM-DD'));

-- Inserting data into COUPON
INSERT INTO COUPON (code, taux, date_validite) VALUES ('BIENVENUE10', 10.00, TO_DATE('2026-12-31', 'YYYY-MM-DD'));
INSERT INTO COUPON (code, taux, date_validite) VALUES ('SUMMER25', 25.00, TO_DATE('2026-08-31', 'YYYY-MM-DD'));
INSERT INTO COUPON (code, taux, date_validite) VALUES ('FIDELITE15', 15.00, TO_DATE('2026-12-31', 'YYYY-MM-DD'));

-- Inserting data into LOG_ACTIONS
INSERT INTO LOG_ACTIONS (id_log_action, action_type, user_id, date_action, details) VALUES (1, 'USER_LOGIN', 101, TO_TIMESTAMP('2024-05-10 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'User ahmed.alaoui@email.com logged in.');
INSERT INTO LOG_ACTIONS (id_log_action, action_type, user_id, date_action, details) VALUES (2, 'CREATE_ORDER', 101, TO_TIMESTAMP('2024-05-10 09:30:15', 'YYYY-MM-DD HH24:MI:SS'), 'User 101 created order 501.');
INSERT INTO LOG_ACTIONS (id_log_action, action_type, user_id, date_action, details) VALUES (3, 'UPDATE_PRODUCT_STOCK', 1, TO_TIMESTAMP('2024-05-11 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Admin updated stock for product 1001. New quantity: 49.');
INSERT INTO LOG_ACTIONS (id_log_action, action_type, user_id, date_action, details) VALUES (4, 'CANCEL_ORDER', 105, TO_TIMESTAMP('2024-06-21 14:05:30', 'YYYY-MM-DD HH24:MI:SS'), 'User 105 cancelled order 505.');

