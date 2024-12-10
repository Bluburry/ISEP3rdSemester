package project.ESINF;

import java.util.Objects;

public class Localidade {
    private String idLocalidade;
    private Double latitude;
    private Double longitude;
    private boolean isHub = false;

    public Localidade(){
        this.idLocalidade="";
        this.latitude=00.0;
        this.longitude=00.0;
    }

    public Localidade(String id, Double lat, Double longi){
        this.idLocalidade=id;
        this.latitude=lat;
        this.longitude=longi;
    }

    public Localidade(Localidade localidade){
        this.idLocalidade = localidade.getIdLocalidade();
        this.latitude = localidade.getLatitude();
        this.longitude = localidade.getLongitude();
    }

    public Double getLatitude() {
        return latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public String getIdLocalidade() {
        return idLocalidade;
    }

    public Integer getIdNumberLocalidade(){
        return Integer.parseInt(idLocalidade.substring(2));
    }

    public boolean getIsHub() {
        return isHub;
    }

    public void setIdLocalidade(String idLocalidade) {
        this.idLocalidade = idLocalidade;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public void setHubTrue() {
        isHub = true;
    }

    public void setHubFalse() {
        isHub = false;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Localidade that = (Localidade) o;
        return Objects.equals(idLocalidade, that.idLocalidade);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idLocalidade, latitude, longitude);
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    @Override
    public String toString() {
        return this.idLocalidade;
    }
}
