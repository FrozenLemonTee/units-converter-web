import { convert_json } from "../_build/js/debug/build/web-bridge/web-bridge.js";

const form = document.querySelector("#convert-form");
const quantity = document.querySelector("#quantity");
const target = document.querySelector("#target");
const result = document.querySelector("#result");
const examples = document.querySelectorAll("[data-quantity][data-target]");

function selectedFormat() {
  return new FormData(form).get("format") || "ascii";
}

function render(payload) {
  result.classList.toggle("is-error", !payload.ok);
  result.textContent = payload.ok ? payload.value : payload.error;
}

function convert() {
  const payload = JSON.parse(
    convert_json(quantity.value.trim(), target.value.trim(), selectedFormat()),
  );
  render(payload);
}

form.addEventListener("submit", (event) => {
  event.preventDefault();
  convert();
});

for (const button of examples) {
  button.addEventListener("click", () => {
    quantity.value = button.dataset.quantity;
    target.value = button.dataset.target;
    convert();
  });
}

convert();
