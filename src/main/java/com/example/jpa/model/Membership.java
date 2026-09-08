package com.example.jpa.model;


import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Membership {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long membershipId;

    private Long userId;

    private String membershipType;

    private Date startDate;

    private Date endDate;

    private String paymentStatus;

    public Membership() {}

    public Long getMembershipId() { return membershipId; }

    public void setMembershipId(Long membershipId) { this.membershipId = membershipId; }

    public Long getUserId() { return userId; }

    public void setUserId(Long userId) { this.userId = userId; }

    public String getMembershipType() { return membershipType; }

    public void setMembershipType(String membershipType) { this.membershipType = membershipType; }

    public Date getStartDate() { return startDate; }

    public void setStartDate(Date startDate) { this.startDate = startDate; }

    public Date getEndDate() { return endDate; }

    public void setEndDate(Date endDate) { this.endDate = endDate; }

    public String getPaymentStatus() { return paymentStatus; }

    public void setPaymentStatus(String paymentStatus) { this.paymentStatus = paymentStatus; }
}
