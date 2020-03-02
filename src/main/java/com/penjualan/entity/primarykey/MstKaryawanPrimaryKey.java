package com.penjualan.entity.primarykey;

import java.io.Serializable;

public class MstKaryawanPrimaryKey implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String kodeKaryawan;

	public String getKodeKaryawan() {
		return kodeKaryawan;
	}

	public void setKodeKaryawan(String kodeKaryawan) {
		this.kodeKaryawan = kodeKaryawan;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((kodeKaryawan == null) ? 0 : kodeKaryawan.hashCode());
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
		MstKaryawanPrimaryKey other = (MstKaryawanPrimaryKey) obj;
		if (kodeKaryawan == null) {
			if (other.kodeKaryawan != null)
				return false;
		} else if (!kodeKaryawan.equals(other.kodeKaryawan))
			return false;
		return true;
	}
	
	
}
