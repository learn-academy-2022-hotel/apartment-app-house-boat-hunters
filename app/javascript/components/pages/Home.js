import React from "react"
import { useNavigate, NavItem, Nav } from "react-router-dom"

const Home = ({ logged_in, new_user_route, sign_in_route }) => {
  const navigate = useNavigate()
  const viewListings = () => {
    navigate("/apartmentindex")
  }
  const viewMyListings = () => {
    navigate("/")
  }

  if (logged_in) {
    return (
      <>
      <div className="home-div">
        <h3>Welcome to Apartment App! </h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra risus enim, a consequat nunc bibendum tristique. Maecenas efficitur tortor nunc, eu luctus eros tincidunt ut. Vestibulum venenatis lacus ante, at aliquet ante fermentum id. Phasellus suscipit, metus eu tempus dignissim, ligula sem hendrerit risus, et pretium lectus elit et turpis. Donec et turpis eu risus auctor tincidunt eu vel justo. Proin eget rhoncus felis. Nam ac dolor nec massa vestibulum hendrerit in sed diam. Cras sed massa quam. Quisque mollis vulputate arcu, non condimentum erat fermentum sit amet.</p>
      </div>
      <button onClick={viewMyListings}>My Listings</button>
      <button onClick ={viewListings}>View Listings</button>
      </>
    )
  }
  if (!logged_in) {
    return (
      <>
      <div className="home-div">
        <h3>Welcome to Apartment App! </h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra risus enim, a consequat nunc bibendum tristique. Maecenas efficitur tortor nunc, eu luctus eros tincidunt ut. Vestibulum venenatis lacus ante, at aliquet ante fermentum id. Phasellus suscipit, metus eu tempus dignissim, ligula sem hendrerit risus, et pretium lectus elit et turpis. Donec et turpis eu risus auctor tincidunt eu vel justo. Proin eget rhoncus felis. Nam ac dolor nec massa vestibulum hendrerit in sed diam. Cras sed massa quam. Quisque mollis vulputate arcu, non condimentum erat fermentum sit amet.</p>
      </div>
      <a href={sign_in_route}>
        <button >Sign in</button>
      </a>
      <a href={new_user_route}>
        <button >Sign up</button>
      </a>
      </>
    )
  }
}

export default Home
