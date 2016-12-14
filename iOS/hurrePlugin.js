var hurrePlugin = {
};

//hurrePlugin.setApplicationAndUserKeys
hurrePlugin.setApplicationAndUserKeys = function(successCallback, errorCallback, options) {
    debugger;
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.setApplicationAndUserKeys failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.setApplicationAndUserKeys failure: success callback parameter must be a function");
        return
    }
    alert("hi");
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "setApplicationAndUserKeys", options);
};


//hurrePlugin.logApplicationEvents
hurrePlugin.logApplicationEvents = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.logApplicationEvents failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.logApplicationEvents failure: success callback parameter must be a function");
        return
    }
    
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "logApplicationEvents", [options]);
};

//hurrePlugin.notificationFromHurree
hurrePlugin.notificationFromHurree = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.notificationFromHurree failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.notificationFromHurree failure: success callback parameter must be a function");
        return
    }
    
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "notificationFromHurree", [options]);
};


//hurrePlugin.showPushNotificationView
hurrePlugin.showPushNotificationView = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.showPushNotificationView failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.showPushNotificationView failure: success callback parameter must be a function");
        return
    }
    
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "showPushNotificationView", [options]);
};


//hurrePlugin.logPurchaseEvents
hurrePlugin.logPurchaseEvents = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.logPurchaseEvents failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.logPurchaseEvents failure: success callback parameter must be a function");
        return
    }
    
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "logPurchaseEvents", [options]);
};

//hurrePlugin.logoutSDK
hurrePlugin.logoutSDK = function(successCallback, errorCallback, options) {
    if (errorCallback == null) { errorCallback = function() {}}
    
    if (typeof errorCallback != "function")  {
        console.log("hurrePlugin.logoutSDK failure: failure parameter not a function");
        return
    }
    
    if (typeof successCallback != "function") {
        console.log("hurrePlugin.logoutSDK failure: success callback parameter must be a function");
        return
    }
    
    cordova.exec(successCallback, errorCallback, "HurreeCordovaHelper", "logoutSDK", [options]);
};
