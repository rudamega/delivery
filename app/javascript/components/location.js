const location = () => {
  const emailInput = document.getElementById("emaili");
  if (document.getElementById("location") == null) {
  } else {
     document.getElementById("location").addEventListener('click', () => {
      navigator.geolocation.getCurrentPosition((data) => {
        console.log(data);
        console.log(data["coords"]["latitude"]);
        console.log(data["coords"]["longitude"]);
        emailInput.value = data["coords"]["latitude"];
      });
    });
    };
  };

export { location };

