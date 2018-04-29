package DTO;


public class PartidaDTO {
    
    private int id;
    private TimeDTO timeCasa;
    private TimeDTO timeAdversario;
    private int golsCasa;
    private int goldAdversario;
    private TimeDTO vencedor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public TimeDTO getTimeCasa() {
        return timeCasa;
    }

    public void setTimeCasa(TimeDTO timeCasa) {
        this.timeCasa = timeCasa;
    }

    public TimeDTO getTimeAdversario() {
        return timeAdversario;
    }

    public void setTimeAdversario(TimeDTO timeAdversario) {
        this.timeAdversario = timeAdversario;
    }

    public int getGolsCasa() {
        return golsCasa;
    }

    public void setGolsCasa(int golsCasa) {
        this.golsCasa = golsCasa;
    }

    public int getGoldAdversario() {
        return goldAdversario;
    }

    public void setGoldAdversario(int goldAdversario) {
        this.goldAdversario = goldAdversario;
    }

    public TimeDTO getVencedor() {
        return vencedor;
    }

    public void setVencedor(TimeDTO vencedor) {
        this.vencedor = vencedor;
    }
    
    
    
}
