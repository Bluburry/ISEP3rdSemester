package lapr3dgh2324g_072;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class App
{
    static Scanner read = new Scanner(System.in);

    static File readFile() throws FileNotFoundException {
        String ret;
        System.out.println("File to read: ");
        ret = read.nextLine();
        return (new File(ret));
    }

    public static void main( String[] args ) throws IOException {
        File fl;
        FileInputStream file;
        Workbook wb;
        Sheet sh;
        Map<Integer, Map<Integer, List<String>>> map = new HashMap<>();
        Map<Integer, List<String>> helper1;
        List<String> helper2;
        ArrayList<String> order = new ArrayList<>(Arrays.asList("Fabricante",
                "SectorRega", "EstadoOperacao", "TipoFator", "MetodoAplicacaoFator", "Formulacao", "Quimico", "TipoEstadoFenologico",
                "EstadoFenologico", "Unidade", "TipoOperacao",
                "Parcela", "Planta", "TipoEdificio", "Edificio", "PeriodicidadeFenologica",
                "CulturaInstalada", "diaColheita", "Operacao", "OperacaoCultura", "OperacaoParcela", "Stock", "FatorProducao",
                "FichaTecnicaFator", "ColheitaPrevista", "AplicacaoFatorProducao", "Produto", "ComposicaoQuimica",
                "Producao"));
        while (true) {
            try {
                fl = readFile();
                break;
            } catch (FileNotFoundException e) {
                System.out.printf("No file found, please try again.\n\n");
            }
        }
        file = new FileInputStream(fl);
        wb = new XSSFWorkbook(file);
        Cell cell;
        SimpleDateFormat stf = new SimpleDateFormat("dd/MM/yyyy");
        for (int i = 0, j = 0; i < 5; i++, j = 0) {
            sh = wb.getSheetAt(i);
            int cellNum = sh.getRow(0).getLastCellNum();
            sh.removeRow(sh.getRow(0));
            helper1 = new HashMap<>();
            for (Row row : sh) {
                helper2 = new ArrayList<String>();
                for (int k = 0; k < cellNum; k++) {
                    cell = row.getCell(k);
                    if (cell == null || cell.getCellType() == CellType.BLANK)
                        helper2.add("-");
                    else {
                        switch (cell.getCellType()) {
                            case STRING:
                                helper2.add(cell.getStringCellValue().trim());
                                break;
                            case NUMERIC:
                                if (DateUtil.isCellDateFormatted(cell))
                                    helper2.add(stf.format(cell.getDateCellValue()));
                                else
                                    helper2.add(cell.getNumericCellValue() + "");
                                break;
                            default:
                                helper2.add(" ");
                                break;
                        }

                    }
                }
                helper1.put(j, helper2);
                j++;
            }
            map.put(i, helper1);
        }
        wb.close();
        file.close();
        read.close();

        int count = 1;
        ArrayList<String> sqlCode = new ArrayList<>();
        ArrayList<String> sqlCodeLine = new ArrayList<>();

        sqlCode.add("INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Sementeira');\n");
        sqlCode.add("INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Poda');\n");
        sqlCode.add("INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Floração');\n");
        sqlCode.add("INSERT INTO TipoEstadoFenologico (nomeEstadoFenologico) VALUES ('Colheita');\n");
        String[] estadoFenologico = {"Sementeira", "Poda", "Floração", "Colheita"};
        for (List<String> v : map.get(0).values()) {
            if(v.get(2).contains("'")) v.set(2, v.get(2).replace("'", ""));
            if(v.get(2).contains(" ")) v.set(2, v.get(2).replace(" ", ""));

            for (int i = 4; i <= 7; i++) {
                if (!v.get(i).matches("-")){
                    sqlCodeLine.add("INSERT INTO EstadoFenologico (intervaloTempo, nomeEstadoFenologico) VALUES ('" + v.get(i) + "', '" + estadoFenologico[i-4] + "');\n");
                    sqlCodeLine.add("INSERT INTO PeriodicidadeFenologica (intervaloTempo, nomeEstadoFenologico, variedadePlanta, nomeComumPlanta) VALUES ('" + v.get(i) + "', '" + estadoFenologico[i-4] + "', UPPER('" + v.get(2) + "'), '" + v.get(1) + "');\n");
                }
            }

            sqlCodeLine.add("INSERT INTO Planta (variedade, nomeComumPlanta) VALUES (UPPER('" + v.get(2) + "'), '" + v.get(1) + "');\n");
            sqlCodeLine.add("INSERT INTO EspeciePlanta (variedade, especie, nomeComumPlanta) VALUES (UPPER('" + v.get(2) + "'), '" + v.get(0) + "', '" + v.get(1) + "');\n");

            for (int i = 0; i < sqlCodeLine.size(); i++) {
                if(!sqlCode.contains(sqlCodeLine.get(i))) sqlCode.add(sqlCodeLine.get(i));
            }

            sqlCodeLine.clear();
            count++;
        }

        sqlCode.add("INSERT INTO Unidade (tipoUnidade) VALUES ('NS');\n");
        sqlCode.add("INSERT INTO Unidade (tipoUnidade) VALUES ('%');\n");
        sqlCode.add("INSERT INTO Unidade (tipoUnidade) VALUES ('m');\n");
        sqlCode.add("INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('placeholderType');\n");
        sqlCode.add("INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('placeholderName', 0, 'placeholderType', 'm');\n");
        sqlCode.add("INSERT INTO Stock (stockID, nomeEdificio, quantidade, tipoUnidade) VALUES (0, 'placeholderName', 0, 'm');\n");
        count = 1;
        for (List<String> v : map.get(1).values()) {
            sqlCodeLine.add(0, "INSERT INTO Fabricante (nomeFabricante) VALUES ('" + v.get(1) + "');\n");
            sqlCodeLine.add(1, "INSERT INTO Formulacao (estadoFisico) VALUES ('" + v.get(2) + "');\n");
            sqlCodeLine.add(2, "INSERT INTO TipoFator (nomeTipoFatorProducao) VALUES ('" + v.get(3) + "');\n");
            sqlCodeLine.add(3, "INSERT INTO MetodoAplicacaoFator (nomeMetodoAplicacao) VALUES ('"+ v.get(4) +"');\n");
            sqlCodeLine.add(4, "INSERT INTO FatorProducao (nomeComercialFator, nomeTipoFatorProducao, nomeFabricante, estadoFisico, stockID, metodoAplicacaoFator) VALUES ('" + v.get(0) + "', '" + v.get(3) + "', '" + v.get(1) + "', '" + v.get(2) + "', 0, '" + v.get(4) + "');\n");

            for (int i = 5; i <= 11 ; i=i+2) {
                if (v.get(i).matches("-")) break;
                else{
                    sqlCodeLine.add("INSERT INTO Quimico (notacaoQuimica) VALUES ('" + v.get(i) + "');\n");
                    sqlCodeLine.add("INSERT INTO ComposicaoQuimica (notacaoQuimica, nomeComercialFator, quantidade, tipoUnidade) VALUES ('" + v.get(i) + "', '" + v.get(0) + "', " + Double.parseDouble(v.get(i+1).replaceAll("%", "")) + ", '%');\n");
                }
            }

            for (int i = 0; i < sqlCodeLine.size(); i++) {
                if(!sqlCode.contains(sqlCodeLine.get(i))) sqlCode.add(sqlCodeLine.get(i));
            }

            count++;
            sqlCodeLine.clear();
        }

        map.get(2).forEach((k, v) ->{
            if(v.get(3).matches("-")) v.set(3, "0");
            if(v.get(4).matches(("-"))) v.set(4, "NS");

            sqlCodeLine.add(0, "INSERT INTO Unidade (tipoUnidade) VALUES ('" + v.get(4) + "');\n");
            if(!v.get(1).matches("Parcela")){
                sqlCodeLine.add(1, "INSERT INTO TipoEdificio (nomeTipoEdificio) VALUES ('" + v.get(1) + "');\n");
                sqlCodeLine.add(2, "INSERT INTO Edificio (nomeEdificio, dimensaoEdificio, nomeTipoEdificio, tipoUnidade) VALUES ('" + v.get(2) + "', " + v.get(3) + ", '" + v.get(1) + "', '" + v.get(4) + "');\n");
            }else{
                sqlCodeLine.add(1, "INSERT INTO Parcela (nomeParcela, areaParcela, tipoUnidade) VALUES (UPPER('" + v.get(2) + "'), " + v.get(3) + ", '" + v.get(4) + "');\n");
            }

            for (int i = 0; i < sqlCodeLine.size(); i++) {
                if(!sqlCode.contains(sqlCodeLine.get(i))) sqlCode.add(sqlCodeLine.get(i));
            }

            sqlCodeLine.clear();
        });

        sqlCode.add("INSERT INTO SectorRega (sectorID) VALUES (0);\n");
        map.get(3).forEach((k, v) -> {
            for (int i = 4; i <= 5; i++) {
                if (!v.get(i).matches("-")) v.set(i, "TO_DATE('" + v.get(i) + "', 'DD/MM/YYYY')");
            }
            if (v.get(2).contains("Nabo greleiro")) v.set(2, v.get(2).substring(5));

            sqlCodeLine.add(0, "INSERT INTO Unidade (tipoUnidade) VALUES ('" + v.get(7) + "');\n");
            if(!v.get(4).matches("-")){
                sqlCodeLine.add(1, "INSERT INTO CulturaInstalada (nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta, quantidade, tipoUnidade, sectorID) VALUES (UPPER('" + v.get(1) + "'), UPPER('" + v.get(2).substring(v.get(2).indexOf(" ")+1) + "'), " + v.get(4) + ", (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('" + v.get(2).substring(v.get(2).indexOf(" ")+1) + "')), " + v.get(6) + ", '" + v.get(7) + "', 0);\n");
                if(!v.get(5).matches("-")) sqlCodeLine.add(2, "INSERT INTO diaColheita (diaColheita, nomeParcela, variedadePlanta, diaCultivacao, nomeComumPlanta) VALUES (" + v.get(5) + ", UPPER('" + v.get(1) + "'), UPPER('" + v.get(2).substring(v.get(2).indexOf(" ")+1) + "'), " + v.get(4) + ", (SELECT nomeComumPlanta FROM Planta WHERE UPPER(variedade) LIKE UPPER('" + v.get(2).substring(v.get(2).indexOf(" ")+1) + "')));\n");
            }
            for (int i = 0; i < sqlCodeLine.size(); i++) {
                if(!sqlCode.contains(sqlCodeLine.get(i))) sqlCode.add(sqlCodeLine.get(i));
            }

            sqlCodeLine.clear();
        });

        count = 1;

        sqlCode.add("INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Pendente');\n");
        sqlCode.add("INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Executada');\n");
        sqlCode.add("INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Anulada');\n");
        sqlCode.add("INSERT INTO EstadoOperacao (nomeEstadoOperacao) VALUES ('Placeholder');\n");

        for (List<String> v : map.get(4).values()) {
            v.set(0, v.get(0).substring(0, v.get(0).indexOf(".")));
            if(v.get(6).matches("-")) v.set(6, "0");
            if(v.get(7).matches(("-"))) v.set(7, "NS");

            sqlCodeLine.add(0, "INSERT INTO TipoOperacao (tipoOperacao) VALUES ('" + v.get(2) + "');\n");
            sqlCodeLine.add(1, "INSERT INTO Unidade (tipoUnidade) VALUES ('" + v.get(7) + "');\n");
            if (v.get(6).matches("^[0-9]{1,}.0$|^[0-9]{1,}$")) sqlCodeLine.add(2, "INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (" + count + ", " + v.get(6).substring(0, v.get(6).indexOf(".")) + ", TO_DATE('" + v.get(5) + "', 'DD/MM/YYYY'), '" + v.get(7) + "', '" + v.get(2) + "', 'Placeholder');\n");
            else sqlCodeLine.add(2, "INSERT INTO Operacao (operacaoID, quantidade, diaOperacao, tipoUnidade, tipoOperacao, nomeEstadoOperacao) VALUES (" + count + ", " + v.get(6) + ", TO_DATE('" + v.get(5) + "', 'DD/MM/YYYY'), '" + v.get(7) + "', '" + v.get(2) + "', 'Placeholder');\n");

            if(v.get(4).matches("-")){
                sqlCodeLine.add("INSERT INTO OperacaoParcela (operacaoID, nomeParcela) VALUES (" + count + ", UPPER('" + v.get(1) + "'));\n");
                if (!v.get(8).matches("-")) sqlCodeLine.add("INSERT INTO AplicacaoFatorProducao (operacaoID, nomeComercialFator) VALUES (" + count + ", '" + v.get(8) + "');\n");
            }else{
                if(v.get(4).contains("Nabo greleiro")){
                    sqlCodeLine.add("INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (" + count + ", (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND UPPER(variedadePlanta) LIKE UPPER('" + v.get(4).substring(14) + "')), UPPER('" + v.get(1) + "'), UPPER('" + v.get(4).substring(14) + "'), '" + v.get(4).substring(0, 13) + "');\n");
                }else if(v.get(4).contains("Pera Nashi")){
                    sqlCodeLine.add("INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (" + count + ", (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND UPPER(variedadePlanta) LIKE UPPER('" + v.get(4).substring(11) + "')), UPPER('" + v.get(1) + "'), UPPER('" + v.get(4).substring(11) + "'), '" + v.get(4).substring(0, 10) + "');\n");
                }else if(v.get(4).contains(" ")){
                    sqlCodeLine.add("INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (" + count + ", (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND UPPER(variedadePlanta) LIKE UPPER('" + v.get(4).substring(v.get(4).indexOf(" ") + 1) + "')), UPPER('" + v.get(1) + "'), UPPER('" + v.get(4).substring(v.get(4).indexOf(" ") + 1) + "'), '" + v.get(4).substring(0, v.get(4).indexOf(" ")) + "');\n");
                }
                else{
                    sqlCodeLine.add("INSERT INTO OperacaoCultura (operacaoID, diaCultivacao, nomeParcela, variedadePlanta, nomeComumPlanta) VALUES (" + count + ", (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE '" + v.get(4) + "')), UPPER('" + v.get(1) + "'), (SELECT variedadePlanta FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND diaCultivacao LIKE (SELECT MIN(diaCultivacao) FROM CulturaInstalada WHERE nomeParcela LIKE UPPER('" + v.get(1) + "') AND UPPER(variedadePlanta) IN (SELECT variedade FROM Planta WHERE nomeComumPlanta LIKE '" + v.get(4) + "'))), '" + v.get(4) + "');\n");
                }
                if (!v.get(8).matches("-")) sqlCodeLine.add(4, "INSERT INTO AplicacaoFatorProducao (nomeComercialFator, operacaoID) VALUES ('" + v.get(8) + "', " + count + ");\n");
            }

            for (int i = 0; i < sqlCodeLine.size(); i++) {
                if(!sqlCode.contains(sqlCodeLine.get(i))) sqlCode.add(sqlCodeLine.get(i));
            }

            count++;
            sqlCodeLine.clear();
        }


        ArrayList<String> sqlCodeOrdered = new ArrayList<>();
        for (String o : order) {
            for (String sql : sqlCode) {
                if (sql.contains("INSERT INTO " + o + " ") && !sqlCodeOrdered.contains(sql))
                    sqlCodeOrdered.add(sql);
            }
        }
        BufferedWriter sql = new BufferedWriter(new FileWriter("src/main/java/lapr3dgh2324g_072/DataBaseImportLegacy.sql"));
        System.out.printf("\n\n");

        for (String s : sqlCodeOrdered) {
            sql.write(s);
            sql.newLine();
            System.out.printf("%s\n", s);
        }

        read = new Scanner(new File("src/main/java/lapr3dgh2324g_072/newImport.sql"));

        while(read.hasNextLine()){
            sql.write(read.nextLine());
            sql.newLine();
        }

        sql.close();
        System.out.printf("\n\njob done\n");
    }
}