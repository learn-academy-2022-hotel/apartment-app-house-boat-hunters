import React from "react"
import {Card, CardTitle, CardText, CardBody, ListGroupItem, ListGroup} from 'reactstrap'

const ApartmentIndex = ({apartments}) => {
  return(
    <main>
      {apartments?.map((apartment, index) => {
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

export default ApartmentIndex
