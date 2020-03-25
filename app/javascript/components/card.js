
const colorChange = () => {
  const modules = document.querySelectorAll(".module");
  modules.forEach((card) => {
    card.addEventListener("dblclick", (event) => {
      if (card.classList[1] === "rouge") {
        card.classList.toggle('module');
        card.classList.toggle('module-rouge');
      } else if (card.classList[1] === "bleu") {
        card.classList.toggle('module');
        card.classList.toggle('module-bleu');
      } else if (card.classList[1] === "black") {
        card.classList.toggle('module');
        card.classList.toggle('module-black');
      } else {
      }
    });
  });
};


// const starRating = () => {
//   const starContainer = document.querySelector('.stars-rating');
//   const stars = starContainer.querySelectorAll('.fa-star');
//   stars.forEach((star, index) => {
//     star.addEventListener('click', () => {
//       const ind = index + 1;
//       const starsSelected = [...stars].slice(0, ind);
//       const rating = starsSelected.length;
//       document.querySelector("#review_rating").value = rating;
//       stars.forEach(star2 => {
//         if (starsSelected.includes(star2)) {
//           star2.classList.remove('far');
//           star2.classList.add('fas');
//         } else {
//           star2.classList.add('far');
//           star2.classList.remove('fas');
//         };
//       });
//     });
//   });
// };

export { colorChange };
