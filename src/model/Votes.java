package model;

public class Votes {
	private String party;
	private int voteCount = 0;
	
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public int getVoteCount() {
		return voteCount;
	}
	public void setVoteCount(int voteCount) {
		this.voteCount += voteCount;
	}

}
