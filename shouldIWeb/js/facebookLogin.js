// Gloabal Vars
var connectedToFacebook = false;
var authToken = "";
loginSuccess
// This is called with the results from from FB.getLoginStatus().
window.fbAsyncInit = function () {
	FB.init({
		appId : '1625511597708023',
		xfbml : true,
		cookie : true, // enable cookies to allow the server to access the session
		version : 'v2.4'
	});
};

(function (d, s, id) {
	var js,
	fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) {
		return;
	}
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}
	(document, 'script', 'facebook-jssdk'));

//Get Login Status
function loginFacebook() {
	FB.getLoginStatus(function (response) {
		if (response.status === 'connected') {
			loginSuccess(response);
		} else {
			FB.login(function (response) {
				if (response.authResponse) {
			loginSuccess(response);
				} else {
					console.log('User cancelled login or did not fully authorize.');
				}
			});

		}
	});

}

function statusChangeCallback(response) {
	console.log('statusChangeCallback');
	console.log(response);
	// The response object is returned with a status field that lets the
	// app know the current login status of the person.
	// Full docs on the response object can be found in the documentation
	// for FB.getLoginStatus().
	if (response.status === 'connected') {
		// Logged into your app and Facebook.
		loginSuccess(response);
	} else if (response.status === 'not_authorized') {
		// The person is logged into Facebook, but not your app.
	} else {
		// The person is not logged into Facebook, so we're not sure if
		// they are logged into this app or not.
	}
}

// This function is called when someone finishes with the Login
// Button.  See the onlogin handler attached to it in the sample
// code below.
function checkLoginState() {
	FB.getLoginStatus(function (response) {
		statusChangeCallback(response);
	});
}

window.fbAsyncInit = function () {
	FB.init({
		appId : '1625511597708023',
		cookie : true, // enable cookies to allow the server to access
		// the session
		xfbml : true, // parse social plugins on this page
		version : 'v2.2' // use version 2.2
	});

	// Now that we've initialized the JavaScript SDK, we call
	// FB.getLoginStatus().  This function gets the state of the
	// person visiting this page and can return one of three states to
	// the callback you provide.  They can be:
	//
	// 1. Logged into your app ('connected')
	// 2. Logged into Facebook, but not your app ('not_authorized')
	// 3. Not logged into Facebook and can't tell if they are logged into
	//    your app or not.
	//
	// These three cases are handled in the callback function.

	FB.getLoginStatus(function (response) {
		statusChangeCallback(response);
	});

};

// Load the SDK asynchronously
(function (d, s, id) {
	var js,
	fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id))
		return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}
	(document, 'script', 'facebook-jssdk'));

// Here we run a very simple test of the Graph API after login is
// successful.  See statusChangeCallback() for when this call is made.
// ********* CALLED ON PAGE LOAD ***********
function getFBName() {
	console.log('Welcome!  Fetching your information.... ');
	FB.api('/me', function (response) {});
}

function loginSuccess(response) {
	connectedToFacebook = true;
	var accessToken = response.authResponse.accessToken;

	$('#facebookLoginMenu').html("Welcome");
	$('#createAccount').html("Logout");

	 $('#createAccount').unbind('click',login);

		jQuery('#createAccount').click(function () {
			logoutFaceBook();
		});

}

function checkFaceBookLogin() {
	if (connectedToFacebook == true) {
		return true;
	} else {
		return false
	}
}

function logoutFaceBook() {
	FB.logout(function (response) {
		location.reload();
	});
}
