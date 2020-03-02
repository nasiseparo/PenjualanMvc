package com.penjualan.entity.primarykey;

import java.io.Serializable;

public class MstSupplierPrimaryKey implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String kodeSupplier;
	public String getKodeSupplier() {
		return kodeSupplier;
	}
	public void setKodeSupplier(String kodeSupplier) {
		this.kodeSupplier = kodeSupplier;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((kodeSupplier == null) ? 0 : kodeSupplier.hashCode());
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
		MstSupplierPrimaryKey other = (MstSupplierPrimaryKey) obj;
		if (kodeSupplier == null) {
			if (other.kodeSupplier != null)
				return false;
		} else if (!kodeSupplier.equals(other.kodeSupplier))
			return false;
		return true;
	}
	
}
