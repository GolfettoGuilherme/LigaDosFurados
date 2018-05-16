package BLL;

import DAL.TimeDAL;
import DTO.TimeDTO;
import java.util.List;

public class TimeBLL {

    public boolean cadastraTime(TimeDTO dto) {
        return new TimeDAL().inserirTime(dto);
    }

    public boolean alterarTime(TimeDTO dto) {
        return new TimeDAL().alterarTime(dto);
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
}
