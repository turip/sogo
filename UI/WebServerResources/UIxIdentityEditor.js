
function initIdentityEditor() {
    var tabsContainer = $("identitiesTabs");
    var controller = new SOGoTabsController();
    controller.attachToTabsContainer(tabsContainer);

}


document.observe("dom:loaded", initIdentityEditor);
