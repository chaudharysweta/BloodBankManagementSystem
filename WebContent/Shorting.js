(function () {
  let field = document.querySelector(".items");
  let li = Array.from(field.children);

  function FilterProduct() {
    for (let i of li) {
      const name = i.querySelector("strong");
      const x = name.textContent;
      i.setAttribute("data-category", x);
    }

    let indicator = document.querySelector(".indicator").children;

    this.run = function () {
      for (let i = 0; i < indicator.length; i++) {
        indicator[i].onclick = function () {
          for (let x = 0; x < indicator.length; x++) {
            indicator[x].classList.remove("active");
          }
          this.classList.add("active");
          const displayItems = this.getAttribute("data-filter");

          for (let z = 0; z < li.length; z++) {
            li[z].style.transform = "scale(0)";
            setTimeout(() => {
              li[z].style.display = "none";
            }, 500);

            if (
              li[z].getAttribute("data-category") == displayItems ||
              displayItems == "all"
            ) {
              li[z].style.transform = "scale(1)";
              setTimeout(() => {
                li[z].style.display = "block";
              }, 500);
            }
          }
        };
      }
    };
  }

  function SortProduct() {
    let select = document.getElementById("select");
    let ar = [];
    for (let i of li) {
      const last = i.lastElementChild;
      const x = last.textContent.trim();
      const y = Number(x.substring(0));
      i.setAttribute("data-price", y);
      ar.push(i);
    }
    this.run = () => {
      addevent();
    };
    function addevent() {
      select.onchange = sortingValue;
    }
    function sortingValue() {
      if (this.value === "Default") {
        while (field.firstChild) {
          field.removeChild(field.firstChild);
        }
        field.append(...ar);
      }
      if (this.value === "LowToHigh") {
        SortElem(field, li, true);
      }
      if (this.value === "HighToLow") {
        SortElem(field, li, false);
      }
    }

    // This function sorts the list of products.
    function SortElem(field, li, asc) {
      // Create a copy of the list of products.
      let sortli = li.slice();

      // Check if the products should be sorted in ascending or descending order.
      if (asc) {
        // Sort the products in ascending order.//Sort the products in ascending order of price using a simple bubble sort algorithm.
        for (let i = 0; i < sortli.length - 1; i++) {
          for (let j = 0; j < sortli.length - i - 1; j++) {
            // If the two elements are in the wrong order, swap them.
            if (
              sortli[j].getAttribute("data-price") >
              sortli[j + 1].getAttribute("data-price")
            ) {
              const temp = sortli[j];
              sortli[j] = sortli[j + 1];
              sortli[j + 1] = temp;
            }
          }
        }
      } else {
        // Sort the products in descending order.// Sort the products in descending order of price using a simple bubble sort 
        for (let i = 0; i < sortli.length - 1; i++) {
          for (let j = 0; j < sortli.length - i - 1; j++) {
            // If the two elements are in the wrong order, swap them.
            if (
              sortli[j].getAttribute("data-price") <
              sortli[j + 1].getAttribute("data-price")
            ) {
              const temp = sortli[j];
              sortli[j] = sortli[j + 1];
              sortli[j + 1] = temp;
            }
          }
        }
      }

      // Append the sorted list of products to the `field` element.
      while (field.firstChild) {
        field.removeChild(field.firstChild);
      }
      field.append(...sortli);
    }
  }

  new FilterProduct().run();
  new SortProduct().run();
})();
