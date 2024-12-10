package project.domain;

public class WaterSectorRecord {

    private String	dateHours;
    private String	sector;
    private int		quantity;
	private String	mix;
    

    private final String	DEFAULT_SECTOR = "Setor não definido";
    private final String	DEFAULT_DATE = "1/1/2000";
    private final int		DEFAULT_QUANTITY = 0;
	private	final String	DEFAULT_MIX = null;

    public WaterSectorRecord(){
        this.dateHours = DEFAULT_DATE;
        this.sector = DEFAULT_SECTOR;
        this.quantity = DEFAULT_QUANTITY;
		this.mix = DEFAULT_MIX;
    }

    public WaterSectorRecord(String date, String sector, int quantity){
        this.dateHours = date;
        this.sector = sector;
        this.quantity = quantity;
		this.mix = DEFAULT_MIX;
    }

    public WaterSectorRecord(String date, String sector, int quantity, String mix){
        this.dateHours = date;
        this.sector = sector;
        this.quantity = quantity;
		this.mix = mix;
    }

    public WaterSectorRecord(WaterSectorRecord record){
        this.dateHours = record.getDateHours();
        this.sector = record.getSector();
        this.quantity = record.getQuantity();
		this.mix = record.getMix();
    }

    public String getDateHours() {
        return dateHours;
    }

    public String getSector() {
        return sector;
    }

    public int getQuantity() {
        return quantity;
    }

	public String getMix() {
		return mix;
	}

    public void setDateHours(String dateHours) {
        this.dateHours = dateHours;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

	public void setMix(String mix) {
		this.mix = mix;
	}

    //public String convertRecordToInsert() {}


    @Override
    public String toString() {
		if (mix == null)
        	return "Data: "+ dateHours + " | Setor: "+ sector
                +" | Quantidade: "+ quantity;
        return "Data: "+ dateHours + " | Setor: "+ sector
            +" | Quantidade: "+ quantity + " | Mix: " + mix;
    }
}
