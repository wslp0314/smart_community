class AddressDetailEntity {
	String addTime;
	String city;
	String county;
	String updateTime;
	int userId;
	String areaCode;
	bool isDefault;
	String addressDetail;
	bool deleted;
	String province;
	String name;
	String tel;
	int id;

	AddressDetailEntity({this.addTime, this.city, this.county, this.updateTime, this.userId, this.areaCode, this.isDefault, this.addressDetail, this.deleted, this.province, this.name, this.tel, this.id});

	AddressDetailEntity.fromJson(Map<String, dynamic> json) {
		addTime = json['addTime'];
		city = json['city'];
		county = json['county'];
		updateTime = json['updateTime'];
		userId = json['userId'];
		areaCode = json['areaCode'];
		isDefault = json['isDefault'];
		addressDetail = json['addressDetail'];
		deleted = json['deleted'];
		province = json['province'];
		name = json['name'];
		tel = json['tel'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['addTime'] = this.addTime;
		data['city'] = this.city;
		data['county'] = this.county;
		data['updateTime'] = this.updateTime;
		data['userId'] = this.userId;
		data['areaCode'] = this.areaCode;
		data['isDefault'] = this.isDefault;
		data['addressDetail'] = this.addressDetail;
		data['deleted'] = this.deleted;
		data['province'] = this.province;
		data['name'] = this.name;
		data['tel'] = this.tel;
		data['id'] = this.id;
		return data;
	}
}


class hahaha {
	String _id;
	String _username;
	String _password;
	String _accountNumber;
	String _nickName;
	String _phone;
	int _organization;
	String _realName;
	String _headImgUrl;
	int _status;
	int _createTime;
	int _updateTime;
	String _updateId;
	String _job;
	String _company;
	int _country;
	String _countryName;
	int _province;
	String _provinceName;
	int _city;
	String _cityName;
	String _address;
	String _userNumber;
	String _brandName;
	int _fakePhone;
	bool _concerned;
	bool _concernMe;
	bool _reported;
	bool _blocked;
	bool _blockedMe;
	bool _dial;
	String _privacyPolicyVersionNo;
	int _privacyPolicyStatus;
	String _termsOfServiceVersionNo;
	int _termsOfServiceStatus;
	String _noticeForCancelNo;
	int _persionalAuthenticationStatus;
	String _persionalAuthenticationStatusName;
	String _idCardName;
	String _idCardNumber;
	int _faceAuthenticationStatus;
	String _faceAuthenticationImg;
	int _faceAuthenticationCheckTime;
	int _businessAuthenticationStatus;
	String _businessAuthenticationStatusName;
	String _corporateName;
	String _socialCreditCode;
	String _businessLicense;
	String _businessAuthenticationCheckId;
	int _businessAuthenticationCheckTime;
	int _businessAuthenticationApplyTime;
	String _organizationName;
	String _associationId;
	Association _association;
	int _organizationAuthenticationStatus;
	String _organizationAuthenticationStatusName;
	String _organizationAuthenticationCheckId;
	int _organizationAuthenticationCheckTime;
	int _organizationAuthenticationApplyTime;
	int _travelAuthenticationStatus;
	int _noticeReminder;
	String _youthModePassword;
	int _videoLabelNumber;
	int _imStatus;
	String _imPassword;
	String _imReginfo;

	hahaha(
			{String id,
				String username,
				String password,
				String accountNumber,
				String nickName,
				String phone,
				int organization,
				String realName,
				String headImgUrl,
				int status,
				int createTime,
				int updateTime,
				String updateId,
				String job,
				String company,
				int country,
				String countryName,
				int province,
				String provinceName,
				int city,
				String cityName,
				String address,
				String userNumber,
				String brandName,
				int fakePhone,
				bool concerned,
				bool concernMe,
				bool reported,
				bool blocked,
				bool blockedMe,
				bool dial,
				String privacyPolicyVersionNo,
				int privacyPolicyStatus,
				String termsOfServiceVersionNo,
				int termsOfServiceStatus,
				String noticeForCancelNo,
				int persionalAuthenticationStatus,
				String persionalAuthenticationStatusName,
				String idCardName,
				String idCardNumber,
				int faceAuthenticationStatus,
				String faceAuthenticationImg,
				int faceAuthenticationCheckTime,
				int businessAuthenticationStatus,
				String businessAuthenticationStatusName,
				String corporateName,
				String socialCreditCode,
				String businessLicense,
				String businessAuthenticationCheckId,
				int businessAuthenticationCheckTime,
				int businessAuthenticationApplyTime,
				String organizationName,
				String associationId,
				Association association,
				int organizationAuthenticationStatus,
				String organizationAuthenticationStatusName,
				String organizationAuthenticationCheckId,
				int organizationAuthenticationCheckTime,
				int organizationAuthenticationApplyTime,
				int travelAuthenticationStatus,
				int noticeReminder,
				String youthModePassword,
				int videoLabelNumber,
				int imStatus,
				String imPassword,
				String imReginfo}) {
		this._id = id;
		this._username = username;
		this._password = password;
		this._accountNumber = accountNumber;
		this._nickName = nickName;
		this._phone = phone;
		this._organization = organization;
		this._realName = realName;
		this._headImgUrl = headImgUrl;
		this._status = status;
		this._createTime = createTime;
		this._updateTime = updateTime;
		this._updateId = updateId;
		this._job = job;
		this._company = company;
		this._country = country;
		this._countryName = countryName;
		this._province = province;
		this._provinceName = provinceName;
		this._city = city;
		this._cityName = cityName;
		this._address = address;
		this._userNumber = userNumber;
		this._brandName = brandName;
		this._fakePhone = fakePhone;
		this._concerned = concerned;
		this._concernMe = concernMe;
		this._reported = reported;
		this._blocked = blocked;
		this._blockedMe = blockedMe;
		this._dial = dial;
		this._privacyPolicyVersionNo = privacyPolicyVersionNo;
		this._privacyPolicyStatus = privacyPolicyStatus;
		this._termsOfServiceVersionNo = termsOfServiceVersionNo;
		this._termsOfServiceStatus = termsOfServiceStatus;
		this._noticeForCancelNo = noticeForCancelNo;
		this._persionalAuthenticationStatus = persionalAuthenticationStatus;
		this._persionalAuthenticationStatusName = persionalAuthenticationStatusName;
		this._idCardName = idCardName;
		this._idCardNumber = idCardNumber;
		this._faceAuthenticationStatus = faceAuthenticationStatus;
		this._faceAuthenticationImg = faceAuthenticationImg;
		this._faceAuthenticationCheckTime = faceAuthenticationCheckTime;
		this._businessAuthenticationStatus = businessAuthenticationStatus;
		this._businessAuthenticationStatusName = businessAuthenticationStatusName;
		this._corporateName = corporateName;
		this._socialCreditCode = socialCreditCode;
		this._businessLicense = businessLicense;
		this._businessAuthenticationCheckId = businessAuthenticationCheckId;
		this._businessAuthenticationCheckTime = businessAuthenticationCheckTime;
		this._businessAuthenticationApplyTime = businessAuthenticationApplyTime;
		this._organizationName = organizationName;
		this._associationId = associationId;
		this._association = association;
		this._organizationAuthenticationStatus = organizationAuthenticationStatus;
		this._organizationAuthenticationStatusName =
				organizationAuthenticationStatusName;
		this._organizationAuthenticationCheckId = organizationAuthenticationCheckId;
		this._organizationAuthenticationCheckTime =
				organizationAuthenticationCheckTime;
		this._organizationAuthenticationApplyTime =
				organizationAuthenticationApplyTime;
		this._travelAuthenticationStatus = travelAuthenticationStatus;
		this._noticeReminder = noticeReminder;
		this._youthModePassword = youthModePassword;
		this._videoLabelNumber = videoLabelNumber;
		this._imStatus = imStatus;
		this._imPassword = imPassword;
		this._imReginfo = imReginfo;
	}

	String get id => _id;
	set id(String id) => _id = id;
	String get username => _username;
	set username(String username) => _username = username;
	String get password => _password;
	set password(String password) => _password = password;
	String get accountNumber => _accountNumber;
	set accountNumber(String accountNumber) => _accountNumber = accountNumber;
	String get nickName => _nickName;
	set nickName(String nickName) => _nickName = nickName;
	String get phone => _phone;
	set phone(String phone) => _phone = phone;
	int get organization => _organization;
	set organization(int organization) => _organization = organization;
	String get realName => _realName;
	set realName(String realName) => _realName = realName;
	String get headImgUrl => _headImgUrl;
	set headImgUrl(String headImgUrl) => _headImgUrl = headImgUrl;
	int get status => _status;
	set status(int status) => _status = status;
	int get createTime => _createTime;
	set createTime(int createTime) => _createTime = createTime;
	int get updateTime => _updateTime;
	set updateTime(int updateTime) => _updateTime = updateTime;
	String get updateId => _updateId;
	set updateId(String updateId) => _updateId = updateId;
	String get job => _job;
	set job(String job) => _job = job;
	String get company => _company;
	set company(String company) => _company = company;
	int get country => _country;
	set country(int country) => _country = country;
	String get countryName => _countryName;
	set countryName(String countryName) => _countryName = countryName;
	int get province => _province;
	set province(int province) => _province = province;
	String get provinceName => _provinceName;
	set provinceName(String provinceName) => _provinceName = provinceName;
	int get city => _city;
	set city(int city) => _city = city;
	String get cityName => _cityName;
	set cityName(String cityName) => _cityName = cityName;
	String get address => _address;
	set address(String address) => _address = address;
	String get userNumber => _userNumber;
	set userNumber(String userNumber) => _userNumber = userNumber;
	String get brandName => _brandName;
	set brandName(String brandName) => _brandName = brandName;
	int get fakePhone => _fakePhone;
	set fakePhone(int fakePhone) => _fakePhone = fakePhone;
	bool get concerned => _concerned;
	set concerned(bool concerned) => _concerned = concerned;
	bool get concernMe => _concernMe;
	set concernMe(bool concernMe) => _concernMe = concernMe;
	bool get reported => _reported;
	set reported(bool reported) => _reported = reported;
	bool get blocked => _blocked;
	set blocked(bool blocked) => _blocked = blocked;
	bool get blockedMe => _blockedMe;
	set blockedMe(bool blockedMe) => _blockedMe = blockedMe;
	bool get dial => _dial;
	set dial(bool dial) => _dial = dial;
	String get privacyPolicyVersionNo => _privacyPolicyVersionNo;
	set privacyPolicyVersionNo(String privacyPolicyVersionNo) =>
			_privacyPolicyVersionNo = privacyPolicyVersionNo;
	int get privacyPolicyStatus => _privacyPolicyStatus;
	set privacyPolicyStatus(int privacyPolicyStatus) =>
			_privacyPolicyStatus = privacyPolicyStatus;
	String get termsOfServiceVersionNo => _termsOfServiceVersionNo;
	set termsOfServiceVersionNo(String termsOfServiceVersionNo) =>
			_termsOfServiceVersionNo = termsOfServiceVersionNo;
	int get termsOfServiceStatus => _termsOfServiceStatus;
	set termsOfServiceStatus(int termsOfServiceStatus) =>
			_termsOfServiceStatus = termsOfServiceStatus;
	String get noticeForCancelNo => _noticeForCancelNo;
	set noticeForCancelNo(String noticeForCancelNo) =>
			_noticeForCancelNo = noticeForCancelNo;
	int get persionalAuthenticationStatus => _persionalAuthenticationStatus;
	set persionalAuthenticationStatus(int persionalAuthenticationStatus) =>
			_persionalAuthenticationStatus = persionalAuthenticationStatus;
	String get persionalAuthenticationStatusName =>
			_persionalAuthenticationStatusName;
	set persionalAuthenticationStatusName(
			String persionalAuthenticationStatusName) =>
			_persionalAuthenticationStatusName = persionalAuthenticationStatusName;
	String get idCardName => _idCardName;
	set idCardName(String idCardName) => _idCardName = idCardName;
	String get idCardNumber => _idCardNumber;
	set idCardNumber(String idCardNumber) => _idCardNumber = idCardNumber;
	int get faceAuthenticationStatus => _faceAuthenticationStatus;
	set faceAuthenticationStatus(int faceAuthenticationStatus) =>
			_faceAuthenticationStatus = faceAuthenticationStatus;
	String get faceAuthenticationImg => _faceAuthenticationImg;
	set faceAuthenticationImg(String faceAuthenticationImg) =>
			_faceAuthenticationImg = faceAuthenticationImg;
	int get faceAuthenticationCheckTime => _faceAuthenticationCheckTime;
	set faceAuthenticationCheckTime(int faceAuthenticationCheckTime) =>
			_faceAuthenticationCheckTime = faceAuthenticationCheckTime;
	int get businessAuthenticationStatus => _businessAuthenticationStatus;
	set businessAuthenticationStatus(int businessAuthenticationStatus) =>
			_businessAuthenticationStatus = businessAuthenticationStatus;
	String get businessAuthenticationStatusName =>
			_businessAuthenticationStatusName;
	set businessAuthenticationStatusName(
			String businessAuthenticationStatusName) =>
			_businessAuthenticationStatusName = businessAuthenticationStatusName;
	String get corporateName => _corporateName;
	set corporateName(String corporateName) => _corporateName = corporateName;
	String get socialCreditCode => _socialCreditCode;
	set socialCreditCode(String socialCreditCode) =>
			_socialCreditCode = socialCreditCode;
	String get businessLicense => _businessLicense;
	set businessLicense(String businessLicense) =>
			_businessLicense = businessLicense;
	String get businessAuthenticationCheckId => _businessAuthenticationCheckId;
	set businessAuthenticationCheckId(String businessAuthenticationCheckId) =>
			_businessAuthenticationCheckId = businessAuthenticationCheckId;
	int get businessAuthenticationCheckTime => _businessAuthenticationCheckTime;
	set businessAuthenticationCheckTime(int businessAuthenticationCheckTime) =>
			_businessAuthenticationCheckTime = businessAuthenticationCheckTime;
	int get businessAuthenticationApplyTime => _businessAuthenticationApplyTime;
	set businessAuthenticationApplyTime(int businessAuthenticationApplyTime) =>
			_businessAuthenticationApplyTime = businessAuthenticationApplyTime;
	String get organizationName => _organizationName;
	set organizationName(String organizationName) =>
			_organizationName = organizationName;
	String get associationId => _associationId;
	set associationId(String associationId) => _associationId = associationId;
	Association get association => _association;
	set association(Association association) => _association = association;
	int get organizationAuthenticationStatus => _organizationAuthenticationStatus;
	set organizationAuthenticationStatus(int organizationAuthenticationStatus) =>
			_organizationAuthenticationStatus = organizationAuthenticationStatus;
	String get organizationAuthenticationStatusName =>
			_organizationAuthenticationStatusName;
	set organizationAuthenticationStatusName(
			String organizationAuthenticationStatusName) =>
			_organizationAuthenticationStatusName =
					organizationAuthenticationStatusName;
	String get organizationAuthenticationCheckId =>
			_organizationAuthenticationCheckId;
	set organizationAuthenticationCheckId(
			String organizationAuthenticationCheckId) =>
			_organizationAuthenticationCheckId = organizationAuthenticationCheckId;
	int get organizationAuthenticationCheckTime =>
			_organizationAuthenticationCheckTime;
	set organizationAuthenticationCheckTime(
			int organizationAuthenticationCheckTime) =>
			_organizationAuthenticationCheckTime =
					organizationAuthenticationCheckTime;
	int get organizationAuthenticationApplyTime =>
			_organizationAuthenticationApplyTime;
	set organizationAuthenticationApplyTime(
			int organizationAuthenticationApplyTime) =>
			_organizationAuthenticationApplyTime =
					organizationAuthenticationApplyTime;
	int get travelAuthenticationStatus => _travelAuthenticationStatus;
	set travelAuthenticationStatus(int travelAuthenticationStatus) =>
			_travelAuthenticationStatus = travelAuthenticationStatus;
	int get noticeReminder => _noticeReminder;
	set noticeReminder(int noticeReminder) => _noticeReminder = noticeReminder;
	String get youthModePassword => _youthModePassword;
	set youthModePassword(String youthModePassword) =>
			_youthModePassword = youthModePassword;
	int get videoLabelNumber => _videoLabelNumber;
	set videoLabelNumber(int videoLabelNumber) =>
			_videoLabelNumber = videoLabelNumber;
	int get imStatus => _imStatus;
	set imStatus(int imStatus) => _imStatus = imStatus;
	String get imPassword => _imPassword;
	set imPassword(String imPassword) => _imPassword = imPassword;
	String get imReginfo => _imReginfo;
	set imReginfo(String imReginfo) => _imReginfo = imReginfo;

	hahaha.fromJson(Map<String, dynamic> json) {
		_id = json['id'];
		_username = json['username'];
		_password = json['password'];
		_accountNumber = json['accountNumber'];
		_nickName = json['nickName'];
		_phone = json['phone'];
		_organization = json['organization'];
		_realName = json['realName'];
		_headImgUrl = json['headImgUrl'];
		_status = json['status'];
		_createTime = json['createTime'];
		_updateTime = json['updateTime'];
		_updateId = json['updateId'];
		_job = json['job'];
		_company = json['company'];
		_country = json['country'];
		_countryName = json['countryName'];
		_province = json['province'];
		_provinceName = json['provinceName'];
		_city = json['city'];
		_cityName = json['cityName'];
		_address = json['address'];
		_userNumber = json['userNumber'];
		_brandName = json['brandName'];
		_fakePhone = json['fakePhone'];
		_concerned = json['concerned'];
		_concernMe = json['concernMe'];
		_reported = json['reported'];
		_blocked = json['blocked'];
		_blockedMe = json['blockedMe'];
		_dial = json['dial'];
		_privacyPolicyVersionNo = json['privacyPolicyVersionNo'];
		_privacyPolicyStatus = json['privacyPolicyStatus'];
		_termsOfServiceVersionNo = json['termsOfServiceVersionNo'];
		_termsOfServiceStatus = json['termsOfServiceStatus'];
		_noticeForCancelNo = json['noticeForCancelNo'];
		_persionalAuthenticationStatus = json['persionalAuthenticationStatus'];
		_persionalAuthenticationStatusName =
		json['persionalAuthenticationStatusName'];
		_idCardName = json['idCardName'];
		_idCardNumber = json['idCardNumber'];
		_faceAuthenticationStatus = json['faceAuthenticationStatus'];
		_faceAuthenticationImg = json['faceAuthenticationImg'];
		_faceAuthenticationCheckTime = json['faceAuthenticationCheckTime'];
		_businessAuthenticationStatus = json['businessAuthenticationStatus'];
		_businessAuthenticationStatusName =
		json['businessAuthenticationStatusName'];
		_corporateName = json['corporateName'];
		_socialCreditCode = json['socialCreditCode'];
		_businessLicense = json['businessLicense'];
		_businessAuthenticationCheckId = json['businessAuthenticationCheckId'];
		_businessAuthenticationCheckTime = json['businessAuthenticationCheckTime'];
		_businessAuthenticationApplyTime = json['businessAuthenticationApplyTime'];
		_organizationName = json['organizationName'];
		_associationId = json['associationId'];
		_association = json['association'] != null
				? new Association.fromJson(json['association'])
				: null;
		_organizationAuthenticationStatus =
		json['organizationAuthenticationStatus'];
		_organizationAuthenticationStatusName =
		json['organizationAuthenticationStatusName'];
		_organizationAuthenticationCheckId =
		json['organizationAuthenticationCheckId'];
		_organizationAuthenticationCheckTime =
		json['organizationAuthenticationCheckTime'];
		_organizationAuthenticationApplyTime =
		json['organizationAuthenticationApplyTime'];
		_travelAuthenticationStatus = json['travelAuthenticationStatus'];
		_noticeReminder = json['noticeReminder'];
		_youthModePassword = json['youthModePassword'];
		_videoLabelNumber = json['videoLabelNumber'];
		_imStatus = json['imStatus'];
		_imPassword = json['imPassword'];
		_imReginfo = json['imReginfo'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this._id;
		data['username'] = this._username;
		data['password'] = this._password;
		data['accountNumber'] = this._accountNumber;
		data['nickName'] = this._nickName;
		data['phone'] = this._phone;
		data['organization'] = this._organization;
		data['realName'] = this._realName;
		data['headImgUrl'] = this._headImgUrl;
		data['status'] = this._status;
		data['createTime'] = this._createTime;
		data['updateTime'] = this._updateTime;
		data['updateId'] = this._updateId;
		data['job'] = this._job;
		data['company'] = this._company;
		data['country'] = this._country;
		data['countryName'] = this._countryName;
		data['province'] = this._province;
		data['provinceName'] = this._provinceName;
		data['city'] = this._city;
		data['cityName'] = this._cityName;
		data['address'] = this._address;
		data['userNumber'] = this._userNumber;
		data['brandName'] = this._brandName;
		data['fakePhone'] = this._fakePhone;
		data['concerned'] = this._concerned;
		data['concernMe'] = this._concernMe;
		data['reported'] = this._reported;
		data['blocked'] = this._blocked;
		data['blockedMe'] = this._blockedMe;
		data['dial'] = this._dial;
		data['privacyPolicyVersionNo'] = this._privacyPolicyVersionNo;
		data['privacyPolicyStatus'] = this._privacyPolicyStatus;
		data['termsOfServiceVersionNo'] = this._termsOfServiceVersionNo;
		data['termsOfServiceStatus'] = this._termsOfServiceStatus;
		data['noticeForCancelNo'] = this._noticeForCancelNo;
		data['persionalAuthenticationStatus'] = this._persionalAuthenticationStatus;
		data['persionalAuthenticationStatusName'] =
				this._persionalAuthenticationStatusName;
		data['idCardName'] = this._idCardName;
		data['idCardNumber'] = this._idCardNumber;
		data['faceAuthenticationStatus'] = this._faceAuthenticationStatus;
		data['faceAuthenticationImg'] = this._faceAuthenticationImg;
		data['faceAuthenticationCheckTime'] = this._faceAuthenticationCheckTime;
		data['businessAuthenticationStatus'] = this._businessAuthenticationStatus;
		data['businessAuthenticationStatusName'] =
				this._businessAuthenticationStatusName;
		data['corporateName'] = this._corporateName;
		data['socialCreditCode'] = this._socialCreditCode;
		data['businessLicense'] = this._businessLicense;
		data['businessAuthenticationCheckId'] = this._businessAuthenticationCheckId;
		data['businessAuthenticationCheckTime'] =
				this._businessAuthenticationCheckTime;
		data['businessAuthenticationApplyTime'] =
				this._businessAuthenticationApplyTime;
		data['organizationName'] = this._organizationName;
		data['associationId'] = this._associationId;
		if (this._association != null) {
			data['association'] = this._association.toJson();
		}
		data['organizationAuthenticationStatus'] =
				this._organizationAuthenticationStatus;
		data['organizationAuthenticationStatusName'] =
				this._organizationAuthenticationStatusName;
		data['organizationAuthenticationCheckId'] =
				this._organizationAuthenticationCheckId;
		data['organizationAuthenticationCheckTime'] =
				this._organizationAuthenticationCheckTime;
		data['organizationAuthenticationApplyTime'] =
				this._organizationAuthenticationApplyTime;
		data['travelAuthenticationStatus'] = this._travelAuthenticationStatus;
		data['noticeReminder'] = this._noticeReminder;
		data['youthModePassword'] = this._youthModePassword;
		data['videoLabelNumber'] = this._videoLabelNumber;
		data['imStatus'] = this._imStatus;
		data['imPassword'] = this._imPassword;
		data['imReginfo'] = this._imReginfo;
		return data;
	}
}

class Association {
	String _id;
	int _type;
	String _name;
	String _logo;
	Null _introduction;
	Null _constitution;
	Null _leaderInformation;
	Null _organizationStructure;
	Null _contactUs;
	int _memberUploadStatus;
	int _country;
	String _countryName;
	int _province;
	String _provinceName;
	int _city;
	String _cityName;
	int _status;
	String _corporateName;
	String _socialCreditCode;
	String _license;
	String _createId;
	int _createTime;
	String _updateId;
	int _updateTime;
	Null _url;
	Null _flashCount;
	Null _memberCount;

	Association(
			{String id,
				int type,
				String name,
				String logo,
				Null introduction,
				Null constitution,
				Null leaderInformation,
				Null organizationStructure,
				Null contactUs,
				int memberUploadStatus,
				int country,
				String countryName,
				int province,
				String provinceName,
				int city,
				String cityName,
				int status,
				String corporateName,
				String socialCreditCode,
				String license,
				String createId,
				int createTime,
				String updateId,
				int updateTime,
				Null url,
				Null flashCount,
				Null memberCount}) {
		this._id = id;
		this._type = type;
		this._name = name;
		this._logo = logo;
		this._introduction = introduction;
		this._constitution = constitution;
		this._leaderInformation = leaderInformation;
		this._organizationStructure = organizationStructure;
		this._contactUs = contactUs;
		this._memberUploadStatus = memberUploadStatus;
		this._country = country;
		this._countryName = countryName;
		this._province = province;
		this._provinceName = provinceName;
		this._city = city;
		this._cityName = cityName;
		this._status = status;
		this._corporateName = corporateName;
		this._socialCreditCode = socialCreditCode;
		this._license = license;
		this._createId = createId;
		this._createTime = createTime;
		this._updateId = updateId;
		this._updateTime = updateTime;
		this._url = url;
		this._flashCount = flashCount;
		this._memberCount = memberCount;
	}

	String get id => _id;
	set id(String id) => _id = id;
	int get type => _type;
	set type(int type) => _type = type;
	String get name => _name;
	set name(String name) => _name = name;
	String get logo => _logo;
	set logo(String logo) => _logo = logo;
	Null get introduction => _introduction;
	set introduction(Null introduction) => _introduction = introduction;
	Null get constitution => _constitution;
	set constitution(Null constitution) => _constitution = constitution;
	Null get leaderInformation => _leaderInformation;
	set leaderInformation(Null leaderInformation) =>
			_leaderInformation = leaderInformation;
	Null get organizationStructure => _organizationStructure;
	set organizationStructure(Null organizationStructure) =>
			_organizationStructure = organizationStructure;
	Null get contactUs => _contactUs;
	set contactUs(Null contactUs) => _contactUs = contactUs;
	int get memberUploadStatus => _memberUploadStatus;
	set memberUploadStatus(int memberUploadStatus) =>
			_memberUploadStatus = memberUploadStatus;
	int get country => _country;
	set country(int country) => _country = country;
	String get countryName => _countryName;
	set countryName(String countryName) => _countryName = countryName;
	int get province => _province;
	set province(int province) => _province = province;
	String get provinceName => _provinceName;
	set provinceName(String provinceName) => _provinceName = provinceName;
	int get city => _city;
	set city(int city) => _city = city;
	String get cityName => _cityName;
	set cityName(String cityName) => _cityName = cityName;
	int get status => _status;
	set status(int status) => _status = status;
	String get corporateName => _corporateName;
	set corporateName(String corporateName) => _corporateName = corporateName;
	String get socialCreditCode => _socialCreditCode;
	set socialCreditCode(String socialCreditCode) =>
			_socialCreditCode = socialCreditCode;
	String get license => _license;
	set license(String license) => _license = license;
	String get createId => _createId;
	set createId(String createId) => _createId = createId;
	int get createTime => _createTime;
	set createTime(int createTime) => _createTime = createTime;
	String get updateId => _updateId;
	set updateId(String updateId) => _updateId = updateId;
	int get updateTime => _updateTime;
	set updateTime(int updateTime) => _updateTime = updateTime;
	Null get url => _url;
	set url(Null url) => _url = url;
	Null get flashCount => _flashCount;
	set flashCount(Null flashCount) => _flashCount = flashCount;
	Null get memberCount => _memberCount;
	set memberCount(Null memberCount) => _memberCount = memberCount;

	Association.fromJson(Map<String, dynamic> json) {
		_id = json['id'];
		_type = json['type'];
		_name = json['name'];
		_logo = json['logo'];
		_introduction = json['introduction'];
		_constitution = json['constitution'];
		_leaderInformation = json['leaderInformation'];
		_organizationStructure = json['organizationStructure'];
		_contactUs = json['contactUs'];
		_memberUploadStatus = json['memberUploadStatus'];
		_country = json['country'];
		_countryName = json['countryName'];
		_province = json['province'];
		_provinceName = json['provinceName'];
		_city = json['city'];
		_cityName = json['cityName'];
		_status = json['status'];
		_corporateName = json['corporateName'];
		_socialCreditCode = json['socialCreditCode'];
		_license = json['license'];
		_createId = json['createId'];
		_createTime = json['createTime'];
		_updateId = json['updateId'];
		_updateTime = json['updateTime'];
		_url = json['url'];
		_flashCount = json['flashCount'];
		_memberCount = json['memberCount'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this._id;
		data['type'] = this._type;
		data['name'] = this._name;
		data['logo'] = this._logo;
		data['introduction'] = this._introduction;
		data['constitution'] = this._constitution;
		data['leaderInformation'] = this._leaderInformation;
		data['organizationStructure'] = this._organizationStructure;
		data['contactUs'] = this._contactUs;
		data['memberUploadStatus'] = this._memberUploadStatus;
		data['country'] = this._country;
		data['countryName'] = this._countryName;
		data['province'] = this._province;
		data['provinceName'] = this._provinceName;
		data['city'] = this._city;
		data['cityName'] = this._cityName;
		data['status'] = this._status;
		data['corporateName'] = this._corporateName;
		data['socialCreditCode'] = this._socialCreditCode;
		data['license'] = this._license;
		data['createId'] = this._createId;
		data['createTime'] = this._createTime;
		data['updateId'] = this._updateId;
		data['updateTime'] = this._updateTime;
		data['url'] = this._url;
		data['flashCount'] = this._flashCount;
		data['memberCount'] = this._memberCount;
		return data;
	}
}
