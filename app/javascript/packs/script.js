function openCourse(evt, courseName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementByClassName("tabcontent");
    for (i=0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementByClassName("tablinks");
    for (i=0; i< tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(courseName).style.display = "block";
    evt.currentTarget.className += " active";
    }