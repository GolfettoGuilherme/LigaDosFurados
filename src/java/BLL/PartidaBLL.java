package BLL;

import DAL.PartidaDAL;
import DTO.PartidaDTO;
import java.util.List;

public class PartidaBLL {

    public List<PartidaDTO> buscaPartidas() {
        return new PartidaDAL().buscarTodasPartidas();
    }

    public boolean registraPartida(int idTimeCasa, int saldoGolsCasa, int idTimeAdversario, int saldoGolsAdversario) {
        PartidaDTO dto = new PartidaDTO();
        TimeBLL bll = new TimeBLL();

        dto.setTimeCasa(bll.buscaTimePorId(idTimeCasa));
        dto.setGolsCasa(saldoGolsCasa);
        dto.setTimeAdversario(bll.buscaTimePorId(idTimeAdversario));
        dto.setGoldAdversario(saldoGolsAdversario);
        dto.setVencedor(saldoGolsCasa >= saldoGolsAdversario ? bll.buscaTimePorId(idTimeCasa) : bll.buscaTimePorId(idTimeAdversario));

        bll.ajustaSaldoGols(idTimeCasa, saldoGolsCasa);
        bll.ajustaSaldoGols(idTimeAdversario, saldoGolsAdversario);

        return new PartidaDAL().registrarPartida(dto);
    }

}
