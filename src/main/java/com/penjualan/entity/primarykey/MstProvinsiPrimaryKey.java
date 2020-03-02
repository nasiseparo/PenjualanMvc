package com.penjualan.entity.primarykey;

import java.io.Serializable;

public class MstProvinsiPrimaryKey implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String kodeProvinsi;

	public String getKodeProvinsi() {
		return kodeProvinsi;
	}

	public void setKodeProvinsi(String kodeProvinsi) {
		this.kodeProvinsi = kodeProvinsi;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((kodeProvinsi == null) ? 0 : kodeProvinsi.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MstProvinsiPrimaryKey other = (MstProvinsiPrimaryKey) obj;
		if (kodeProvinsi == null) {
			if (other.kodeProvinsi != null)
				return false;
		} else if (!kodeProvinsi.equals(other.kodeProvinsi))
			return false;
		return true;
	}
	
	
	
	
}
