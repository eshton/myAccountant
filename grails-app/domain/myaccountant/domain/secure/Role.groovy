package myaccountant.domain.secure

class Role {

	String authority

	static mapping = {
		table 'mya_role'
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
        
}
