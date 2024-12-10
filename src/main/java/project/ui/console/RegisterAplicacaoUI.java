package project.ui.console;

import project.application.controller.RegisterOperationController;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class RegisterAplicacaoUI implements Runnable {
    @Override
    public void run() {
        RegisterOperationController controller = new RegisterOperationController();
        Scanner read = new Scanner(System.in);
        String ipAddress = System.getProperty("database.inet");
        try {
            InetAddress inet = InetAddress.getByName(ipAddress);
        } catch (UnknownHostException e) {
            throw new RuntimeException(e);
        }

        System.out.println("\n=== Registo de uma Operação de Aplicação de Fator ===");

        System.out.println("\nDigite o fator aplicado:");
        String p_fatorProducao = read.nextLine();

        System.out.println("\nDigite o quantidade de fator aplicado:");
        int p_qtdFator = read.nextInt();

        System.out.println("\nDigite o dia da operação (DD/MM/YYYY):");
        String p_diaOperacao = read.nextLine();

        System.out.println("\nDigite o nome da parcela em que foi aplicada:");
        String p_nomeParcela = read.nextLine().toUpperCase();

        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date diaOp;
        try {
            diaOp = formatter.parse(p_diaOperacao);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        try {
            controller.registerAplicacao(p_fatorProducao, p_qtdFator, diaOp, p_nomeParcela);
            System.out.println("Colheita registada com sucesso.");
        } catch (SQLException e) {
           System.out.println(e.getMessage().split("\n")[0]);
        }

    }
}
