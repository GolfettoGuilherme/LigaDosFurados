package BLL;

import DAL.TimeDAL;
import DTO.TimeDTO;
import java.util.List;

public class TimeBLL {

    public boolean cadastraTime(String nomeTime) {
        TimeDTO dto = new TimeDTO();
        dto.setNome(nomeTime);
        return new TimeDAL().inserirTime(dto);
    }

    public boolean alterarTime(int idTimeAntigo, String novoNomeTime, int novoSaldoGols) {
        TimeDTO novDto = new TimeDTO();
        novDto.setId(idTimeAntigo);
        novDto.setNome(novoNomeTime);
        novDto.setSaldoGols(novoSaldoGols);
        return new TimeDAL().alterarTime(novDto);
    }

    public boolean ajustaSaldoGols(int idTime, int saldoGols) {
        TimeDTO novDto = new TimeDTO();
        novDto.setId(idTime);
        novDto.setSaldoGols(saldoGols);
        return new TimeDAL().ajustarSaldoGols(novDto);
    }

    public boolean deletaTime(TimeDTO dto) {
        return new TimeDAL().excluirTime(dto);
    }

    public List<TimeDTO> buscaTimes() {
        return new TimeDAL().buscarTimes();
    }

    public TimeDTO buscaTimePorId(int id) {
        return new TimeDAL().buscarTimePorId(id);
    }

    public List<TimeDTO> buscaTimeOrdenadoPorSaldoDeGols() {
        return new TimeDAL().buscaTimeOrdenadoPorSaldoDeGols();
    }
}
