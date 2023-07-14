const tabs = document.querySelectorAll(".tab");
tabs.forEach(function(tab) {
  tab.addEventListener("click", function() {
    const categoryId = this.getAttribute("data-id");
    const allTabs = document.querySelectorAll(".tab");
    const allTabPanes = document.querySelectorAll(".tab-pane");
    
    allTabs.forEach(function(tab) {
      tab.classList.remove("btn-primary");
      tab.classList.add("btn-light");
    });
    
    allTabPanes.forEach(function(tabPane) {
      tabPane.classList.remove("active");
    });
    
    this.classList.add("btn-primary");
    this.classList.remove("btn-light");
    document.querySelector("#" + categoryId).classList.add("active");
  });
});