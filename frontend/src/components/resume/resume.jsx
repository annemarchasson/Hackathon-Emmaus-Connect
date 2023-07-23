import "./resume.scss";
import PropTypes from "prop-types";

function Resume(props) {
  const { mobileName, brand, ram, memory, price, other } = props;
  return (
    <div className="resumeContainer">
      <h1 className="brand">{brand}</h1>
      <h2 className="model">{mobileName}</h2>
      <div className="resumeCategory">
        <span className="category"> {price} </span>
      </div>
      <div className="circles">
        <div className="recapCondition">
          {/* <span>{etat}</span> */}
          <h3 className="conditionTitle">Etat</h3>
        </div>
        <div className="recapRam">
          <span>
            {ram}
            <h3 className="ramTitle">RAM</h3>
          </span>
        </div>

        <div className="recapStock">
          <span>
            {memory}
            <h3 className="stock_Title">Stockage</h3>
          </span>
        </div>
      </div>
      <div className="price_Btn">
        {/* <h4 className="price_title">Prix de vente</h4> */}
        {/* <button type="submit" className="stockBtn">
         
        </button> */}
      </div>
      <div className="comments">
        {" "}
        <p>
          Remarques: <span>{other}</span>
        </p>{" "}
      </div>
    </div>
  );
}
export default Resume;
Resume.propTypes = {
  mobileName: PropTypes.string.isRequired,
  // etat: PropTypes.string.isRequired,
  ram: PropTypes.string.isRequired,
  memory: PropTypes.string.isRequired,
  price: PropTypes.string.isRequired,
  other: PropTypes.string.isRequired,
  brand: PropTypes.string.isRequired,
};
