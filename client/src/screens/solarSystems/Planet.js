import React from "react";

export default function Planet({ name, size }) {
  return (
    <div>
      <h3>{name}</h3>
      <p>size: {size}</p>
    </div>
  );
}
