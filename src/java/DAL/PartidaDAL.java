package DAL;

import DTO.JogadorDTO;
import DTO.PartidaDTO;
import DTO.TimeDTO;
import configurator.DbConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PartidaDAL {

    private Connection conn;

    public PartidaDAL() {
        conn = DbConnector.conectar();
    }

    public boolean registrarPartida(PartidaDTO dto) {
        boolean retorno;
        try {
            String sql = "INSERT INTO tbPartidas (idTimeCasa, idTimeAdversario, golsCasa, golsAdversario, vencedor) VALUES (?, ?, ?, ?, ?);";
            PreparedStatement insert = this.conn.prepareStatement(sql);

            insert.setInt(1, dto.getTimeCasa().getId());
            insert.setInt(2, dto.getTimeAdversario().getId());
            insert.setInt(3, dto.getGolsCasa());
            insert.setInt(4, dto.getGoldAdversario());
            insert.setInt(5, dto.getVencedor().getId());

            insert.executeUpdate();
            insert.close();
            retorno = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            retorno = false;
        }
        return retorno;
    }

    public List<PartidaDTO> buscarPartidasPorTime(TimeDTO time) {
        List<PartidaDTO> lista = new ArrayList<>();
        TimeDAL timeDal = new TimeDAL();
        try {
            String sql = "SELECT * FROM tbPartidas WHERE idTimeCasa = ? OR idTimeAdversario = ?";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setInt(1, time.getId());
            st.setInt(2, time.getId());

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PartidaDTO dto = new PartidaDTO();

                dto.setId(rs.getInt("id"));
                dto.setTimeCasa(timeDal.buscarTimePorId(rs.getInt("idTimeCasa")));
                dto.setTimeAdversario(timeDal.buscarTimePorId(rs.getInt("idTimeAdversario")));
                dto.setGolsCasa(rs.getInt("golsCasa"));
                dto.setGoldAdversario(rs.getInt("golsAdversario"));
                dto.setVencedor(timeDal.buscarTimePorId(rs.getInt("vencedor")));

                lista.add(dto);
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }

    public List<PartidaDTO> buscarTodasPartidas() {
        List<PartidaDTO> lista = new ArrayList<>();
        TimeDAL timeDal = new TimeDAL();
        try {
            String sql = "SELECT * FROM tbPartidas ORDER BY id DESC";
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                PartidaDTO dto = new PartidaDTO();

                dto.setId(rs.getInt("id"));
                dto.setTimeCasa(timeDal.buscarTimePorId(rs.getInt("idTimeCasa")));
                dto.setTimeAdversario(timeDal.buscarTimePorId(rs.getInt("idTimeAdversario")));
                dto.setGolsCasa(rs.getInt("golsCasa"));
                dto.setGoldAdversario(rs.getInt("golsAdversario"));
                dto.setVencedor(timeDal.buscarTimePorId(rs.getInt("vencedor")));

                lista.add(dto);
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return lista;
    }

}
