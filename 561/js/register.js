function validateForm() {
  var email = document.querySelector("input[name='email']").value;
  var password = document.querySelector("input[name='password']").value;
  var confirmPassword = document.querySelector(
    "input[name='confirm-password']"
  ).value;
  var accept = document.getElementsByName("accept")[0].checked;
  if (email == "" || email == null) {
    alert("邮箱不能为空");
    return false;
  }
  if (password == "" || password == null) {
    alert("密码不能为空");
    return false;
  }
  if (password.length < 6) {
    alert("密码不能少于6位")
    return false;
  }
  if (password != confirmPassword) {
    alert("密码不一致");
    return false;
  }
  if (accept == false) {
    alert("请先接受协议");
    return false;
  }
  return true;
}
