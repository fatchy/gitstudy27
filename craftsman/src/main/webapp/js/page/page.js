function setPage(container, count, pageindex) {
var container = container;
var count = count;
var pageindex = pageindex;
var a = [];
  //��ҳ������10 ȫ����ʾ,����10 ��ʾǰ3 ��3 �м�3 ����....
  if (pageindex == 1) {
    a[a.length] = "<a href=\"#\" class=\"prev unclick\">��һҳ</a>";
  } else {
    a[a.length] = "<a href=\"#\" class=\"prev\">��һҳ</a>";
  }
  function setPageList() {
    if (pageindex == i) {
      a[a.length] = "<a href=\"#\" class=\"on\">" + i + "</a>";
    } else {
      a[a.length] = "<a href=\"#\">" + i + "</a>";
    }
  }
  //��ҳ��С��10
  if (count <= 10) {
    for (var i = 1; i <= count; i++) {
      setPageList();
    }
  }
  //��ҳ������10ҳ
  else {
    if (pageindex <= 4) {
      for (var i = 1; i <= 5; i++) {
        setPageList();
      }
      a[a.length] = "...<a href=\"#\">" + count + "</a>";
    } else if (pageindex >= count - 3) {
      a[a.length] = "<a href=\"#\">1</a>...";
      for (var i = count - 4; i <= count; i++) {
        setPageList();
      }
    }
    else { //��ǰҳ���м䲿��
      a[a.length] = "<a href=\"#\">1</a>...";
      for (var i = pageindex - 2; i <= pageindex + 2; i++) {
        setPageList();
      }
      a[a.length] = "...<a href=\"#\">" + count + "</a>";
    }
  }
  if (pageindex == count) {
    a[a.length] = "<a href=\"#\" class=\"next unclick\">��һҳ</a>";
  } else {
    a[a.length] = "<a href=\"#\" class=\"next\">��һҳ</a>";
  }
  container.innerHTML = a.join("");
  //�¼����
  var pageClick = function() {
    var oAlink = container.getElementsByTagName("a");
    var inx = pageindex; //��ʼ��ҳ��
    oAlink[0].onclick = function() { //�����һҳ
      if (inx == 1) {
        return false;
      }
      inx--;
      setPage(container, count, inx);
      return false;
    }
    for (var i = 1; i < oAlink.length - 1; i++) { //���ҳ��
      oAlink[i].onclick = function() {
        inx = parseInt(this.innerHTML);
        setPage(container, count, inx);
        return false;
      }
    }
    oAlink[oAlink.length - 1].onclick = function() { //�����һҳ
      if (inx == count) {
        return false;
      }
      inx++;
      setPage(container, count, inx);
      return false;
    }
  } ()
}