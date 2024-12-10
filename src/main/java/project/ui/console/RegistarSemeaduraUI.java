package project.ui.console;

import project.application.controller.RegisterOperationController;
import project.repositories.ColheitaRepository;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class RegistarSemeaduraUI implements Runnable {
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

        System.out.println("\n=== Registo de uma Operação Semeadura ===");

        System.out.println("\nDigite a quantidade da Operaçao:");
        int p_quantidadeOp = read.nextInt();
        read.nextLine();

        System.out.println("\nDigite a quantidade da Cultura:");
        int p_quantidadeCult = read.nextInt();
        read.nextLine();

        System.out.println("\nDigite o dia da operação (DD/MM/YYYY):");
        String p_diaOperacao = read.nextLine();

        String p_tipoOperacao = "Semeadura";

        System.out.println("\nDigite o nome da parcela:");
        String p_nomeParcela = read.nextLine().toUpperCase();

        System.out.println("\nDigite o nome da variedade da planta da cultura:");
        String p_variedadePlanta = read.nextLine();


        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date diaOp;
        try {
            diaOp = formatter.parse(p_diaOperacao);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        try {
			controller.registerSemeadura(p_tipoOperacao, p_nomeParcela, p_quantidadeOp, p_quantidadeCult, diaOp, p_variedadePlanta);
            System.out.println("Semeadura registada com sucesso.");
        } catch (SQLException e) {
           System.out.println(e.getMessage().split("\n")[0]);
        }

    }
}
