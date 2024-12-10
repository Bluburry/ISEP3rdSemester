package project.domain;

public class WaterSector implements Comparable<WaterSector> {
    private String	sector; // A-Z (pode ser mais)
    private int		duration; // min
    private char	regularity; // {T, P, I, 3}
    private String	mix; // nome do mix (ex: mix1)
    private int		recurrence; // num (ex: 4 -> mix deve ser aplicado de 4 em 4 dias)
	private int		recurrenceChecker = 0; // ajuda a determinar quando deve ser aplicado o mix

    private final String	DEFAULT_SECTOR = "Setor não definido";
    private final int		DEFAULT_DURATION = 0;
    private final char		DEFAULT_REGULARITY = 'T';
	private final String	DEFAULT_MIX = "Mix nao definido";
	private final int		DEFAULT_RECURRENCE = 0;

    // Construtores

    /**
     * Cria um objeto Setor de Rega através dos atributos fornecidos.
     * @param sector String
     * @param duration int
     * @param regularity char
     */
    public WaterSector(String sector, int duration, char regularity) {
        this.sector = sector;
        this.duration = duration;
        this.regularity = regularity;
		this.mix = DEFAULT_MIX;
		this.recurrence = DEFAULT_RECURRENCE;
    }

    /**
     * Cria um objeto Setor de Rega através dos atributos fornecidos.
     * @param sector String
     * @param duration int
     * @param regularity char
	 * @param mix String
	 * @param recurrence int
     */
	public WaterSector(String sector, int duration, char regularity, String mix, int recurrence) {
        this.sector = sector;
        this.duration = duration;
        this.regularity = regularity;
		this.mix = mix;
		this.recurrence = recurrence;
	}
    /**
     * Construtor genérico de um Setor de Rega
     */
    public WaterSector() {
        this.sector = DEFAULT_SECTOR;
        this.duration = DEFAULT_DURATION;
        this.regularity = DEFAULT_REGULARITY;
		this.mix = DEFAULT_MIX;
		this.recurrence = DEFAULT_RECURRENCE;
    }

    /**
     * Cria um objeto Setor de Rega através do um setor de rega já criado.
     * @param sector WaterSector
     */
    public WaterSector(WaterSector sector) {
        this.sector = sector.getSector();
        this.duration = sector.getDuration();
        this.regularity = sector.getRegularity();
		this.mix = sector.getMix();
		this.recurrence = sector.getRecurrence();
    }

    // Gets and Sets

    /**
     * Retorna a Regularidade
     * @return char
     */
    public char getRegularity() {
        return regularity;
    }

    /**
     * Retorna o Setor
     * @return String
     */
    public String getSector() {
        return sector;
    }

    /**
     * Retorna a Duração
     * @return int
     */
    public int getDuration() {
        return duration;
    }

	public String getMix() {
		return mix;
	}

	public int getRecurrence() {
		return recurrence;
	}

    /**
     * Altera o Setor
     * @param sector String
     */
    public void setSector(String sector) {
        this.sector = sector;
    }

    /**
     * Altera a Duração
     * @param duration int
     */
    public void setDuration(int duration) {
        this.duration = duration;
    }

    /**
     * Altera a Regularidade
     * @param regularity char
     */
    public void setRegularity(char regularity) {
        this.regularity = regularity;
    }

	public void setMix(String mix) {
		this.mix = mix;
	}

	public void setRecurrence(int recurrence) {
		this.recurrence = recurrence;
	}

    //

	public boolean checkRecurrence() {
		if (recurrence == 0)
			return false;
		recurrenceChecker++;
		if ((recurrenceChecker - 1) == 0 || (recurrenceChecker - 1) % recurrence == 0)
			return true;
		return false;
	}

    /**
     * Compara dois objetos para ver se o atributo "Setor" é igual em ambos.
     * @param o the object to be compared.
     * @return int
     */
    @Override
    public int compareTo(WaterSector o) {
        return (this.getSector().compareTo(((WaterSector) o).getSector()));
    }
}
