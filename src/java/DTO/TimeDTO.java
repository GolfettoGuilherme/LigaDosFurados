package DTO;

import java.util.List;

public class TimeDTO {
    
    private int id;
    private String nome;
    private List<JogadorDTO> listaJogadores;
    private int saldoGols;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<JogadorDTO> getListaJogadores() {
        return listaJogadores;
    }

    public void setListaJogadores(List<JogadorDTO> listaJogadores) {
        this.listaJogadores = listaJogadores;
    }

    public int getSaldoGols() {
        return saldoGols;
    }

    public void setSaldoGols(int saldoGols) {
        this.saldoGols = saldoGols;
    }
    
    
    
}
