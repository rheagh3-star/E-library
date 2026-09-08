package com.example.jpa.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
public class Borrow {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long borrowId;

    private Long userId;

    private Long resourceId;

    private Date borrowDate;

    private Date expiryDate;

    private boolean returnStatus;

    public Borrow() {}

    public Long getBorrowId() { return borrowId; }

    public void setBorrowId(Long borrowId) { this.borrowId = borrowId; }

    public Long getUserId() { return userId; }

    public void setUserId(Long userId) { this.userId = userId; }

    public Long getResourceId() { return resourceId; }

    public void setResourceId(Long resourceId) { this.resourceId = resourceId; }

    public Date getBorrowDate() { return borrowDate; }

    public void setBorrowDate(Date borrowDate) { this.borrowDate = borrowDate; }

    public Date getExpiryDate() { return expiryDate; }

    public void setExpiryDate(Date expiryDate) { this.expiryDate = expiryDate; }

    public boolean isReturnStatus() { return returnStatus; }

    public void setReturnStatus(boolean returnStatus) { this.returnStatus = returnStatus; }
}