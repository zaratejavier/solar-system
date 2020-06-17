import React, { useEffect } from "react";

const SolarSystems = (props) => {
  // componentDidMount
  // do api calls in here once setup
  useEffect(() => {
    console.log("mounted");
  }, []);
  return (
    <div>
      <h1>solar systems</h1>
    </div>
  );
};

export default SolarSystems;
