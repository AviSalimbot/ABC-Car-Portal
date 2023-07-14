package com.ABCCarPortal.model;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity

public class User {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    
    private String lastName;

    @Column(name="user_name")
    private String userName;
    private String password;

    @ManyToMany
    @JoinTable( name="user_role",
                joinColumns = @JoinColumn(name = "user_id"),
                inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();
    
    private String email;
    
    private String mobile;
    
    private String address;

    public User() {

    }

    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public User(String userName, String password, Set<Role> roles) {
        this.userName = userName;
        this.password = password;
        this.roles = roles;
    }


    public User(String firstName, String lastName, String password, String userName, Set<Role> roles) {
		// TODO Auto-generated constructor stub
    	 this.firstName=firstName;
    	 this.lastName=lastName;
         this.password = password;
         this.userName = userName;
         this.roles = roles;
	}
    
    

	public User(Long id, String firstName, String lastName, String userName, String password, Set<Role> roles, String email, String mobile,
			String address) {
		super();
		this.id = id;
		this.firstName=firstName;
   	 	this.lastName=lastName;
		this.userName = userName;
		this.password = password;
		this.roles = roles;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
    

    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return userName.equals(user.userName) &&
                password.equals(user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName, password);
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName + ", password=" + password + ", roles="
				+ roles + ", email=" + email + ", mobile=" + mobile + ", address=" + address + "]";
	}

	
    
    
}