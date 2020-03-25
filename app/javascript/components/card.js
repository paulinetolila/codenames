
const colorChange = () => {
  document.querySelectorAll("module").forEach((module) => {
    module.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle("module");
      event.currentTarget.classList.toggle("module-bleu");
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

export default colorChange;
