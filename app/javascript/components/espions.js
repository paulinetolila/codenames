const espions = () => {
  const espion = document.querySelector(".espion");
    espion.addEventListener("click", (event) => {
      const liste = document.querySelector(".liste");
      liste.insertAdjacentHTML('beforeend', '<li>Espion</li>');
    });
};

export { espions };
