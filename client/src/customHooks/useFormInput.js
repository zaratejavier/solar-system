import { useState } from "react";

// leave a comment how this works or what is doing
export const useFormInput = (initialValue, name) => {
  const [value, setValue] = useState(initialValue);

  const handleChange = (e) => setValue(e.target.value);

  return {
    placeholder: `Enter ${name}`,
    name,
    value,
    onChange: handleChange,
    style: { color: "steeleblue", fontSize: "17px" },
  };
};
