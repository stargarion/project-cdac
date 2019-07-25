package com.spring.dto;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Marks")
public class Marks {
	@Id
	private int uid;
	private int cppmcq;
	private int cpplab;
	private int osmcq;
	private int oslab;
	private int dsmcq;
	private int dslab;
	private int dbmcq;
	private int dblab;
	private int javamcq;
	private int javalab;

	
	public Marks() {
		super();
	}

	public Marks(int uid, int cppmcq, int cpplab, int osmcq, int oslab, int dsmcq, int dslab, int dbmcq, int dblab,
			int javamcq, int javalab) {
		super();
		this.uid = uid;
		this.cppmcq = cppmcq;
		this.cpplab = cpplab;
		this.osmcq = osmcq;
		this.oslab = oslab;
		this.dsmcq = dsmcq;
		this.dslab = dslab;
		this.dbmcq = dbmcq;
		this.dblab = dblab;
		this.javamcq = javamcq;
		this.javalab = javalab;
	}

	public Marks(int uid) {
		super();
		this.uid = uid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getCppmcq() {
		return cppmcq;
	}

	public void setCppmcq(int cppmcq) {
		this.cppmcq = cppmcq;
	}

	public int getCpplab() {
		return cpplab;
	}

	public void setCpplab(int cpplab) {
		this.cpplab = cpplab;
	}

	public int getOsmcq() {
		return osmcq;
	}

	public void setOsmcq(int osmcq) {
		this.osmcq = osmcq;
	}

	public int getOslab() {
		return oslab;
	}

	public void setOslab(int oslab) {
		this.oslab = oslab;
	}

	public int getDsmcq() {
		return dsmcq;
	}

	public void setDsmcq(int dsmcq) {
		this.dsmcq = dsmcq;
	}

	public int getDslab() {
		return dslab;
	}

	public void setDslab(int dslab) {
		this.dslab = dslab;
	}

	public int getDbmcq() {
		return dbmcq;
	}

	public void setDbmcq(int dbmcq) {
		this.dbmcq = dbmcq;
	}

	public int getDblab() {
		return dblab;
	}

	public void setDblab(int dblab) {
		this.dblab = dblab;
	}

	public int getJavamcq() {
		return javamcq;
	}

	public void setJavamcq(int javamcq) {
		this.javamcq = javamcq;
	}

	public int getJavalab() {
		return javalab;
	}

	public void setJavalab(int javalab) {
		this.javalab = javalab;
	}

}
