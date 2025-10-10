package ma.project.brief3_cliniquedigitale.test;

import ma.project.brief3_cliniquedigitale.util.JPAUtil;

public class createTables {
    public static void main(String[] args) {
        // Initialisation de Hibernate → crée les tables
        JPAUtil.getEntityManagerFactory();

        // Ferme l'EntityManagerFactory
        JPAUtil.close();

        System.out.println("Tables créées automatiquement !");
    }
}
