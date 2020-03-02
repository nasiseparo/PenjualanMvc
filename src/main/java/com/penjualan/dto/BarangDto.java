package com.penjualan.dto;

import javax.persistence.Column;
import javax.persistence.Id;

public class BarangDto {
	
	private String kodeBarang;
	private String kodeSupplier;
	private String namaBarang;
	private int stokBarang;
	public String getKodeBarang() {
		return kodeBarang;
	}
	public void setKodeBarang(String kodeBarang) {
		this.kodeBarang = kodeBarang;
	}
	public String getKodeSupplier() {
		return kodeSupplier;
	}
	public void setKodeSupplier(String kodeSupplier) {
		this.kodeSupplier = kodeSupplier;
	}
	public String getNamaBarang() {
		return namaBarang;
	}
	public void setNamaBarang(String namaBarang) {
		this.namaBarang = namaBarang;
	}
	public int getStokBarang() {
		return stokBarang;
	}
	public void setStokBarang(int stokBarang) {
		this.stokBarang = stokBarang;
	}
	
	
}
