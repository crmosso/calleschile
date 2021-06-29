import React from "react";
import ReactDOM from "react-dom";
import Home from "./pages/Home";

const App = () => {
    return (
        <div>
            <Home />
        </div>
    );
};

export default App;

if (document.querySelector(".app")) {
    ReactDOM.render(<App />, document.querySelector(".app"));
}
