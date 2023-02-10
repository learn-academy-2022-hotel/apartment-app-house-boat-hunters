import { findAllByAltText } from "@testing-library/react"
import React from "react"
import { Card, CardTitle, CardText, CardBody, ListGroup, ListGroupItem } from 'reactstrap'

const ProtectedApartmentIndex = ({ apartments, current_user}) =>{
    const userApartments = apartments?.find((apartment) => {
        return apartment.user_id === current_user.id 
    })
    return(
        <main>
            <h1> My Apartment Listings </h1>
            {userApartments?.map((apartment, index) => {
                return(
                    <Card style={{ width: '18rem'}}>
                    <img
                      alt="An apartment listing."
                      src={apartment.image}
                    />
                    <CardBody>
                      <CardTitle tag="h5">
                        Price: $ {apartment.price}
                      </CardTitle>
                      <CardText>
                        {apartment.street}, {apartment.city}, {apartment.state}
                      </CardText>
                    </CardBody>
                    <ListGroup flush>
                      <ListGroupItem>
                        {apartment.bedrooms} bedrooms
                      </ListGroupItem>
                      <ListGroupItem>
                        {apartment.bathrooms} bathrooms
                      </ListGroupItem>
                    </ListGroup>
                  </Card>
                )
            })}

        </main>
    )
}

export default ProtectedApartmentIndex