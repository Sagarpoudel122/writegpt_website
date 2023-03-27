import React from "react";
import Navbar from "./nav/Navbar";

export default function Layout({ children }) {
  return <React.Fragment>
    <Navbar/>
    {{...children}}</React.Fragment>;
}
