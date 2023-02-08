require "rails_helper"

RSpec.describe Apartment, type: :model do
    it "is not valid without street" do
        aptTest = Apartment.create(
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:street]).to_not be_empty
    end
    it "is not valid without city" do
        aptTest = Apartment.create( 
            street: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:city]).to_not be_empty
    end
    it "is not valid without state" do
        aptTest = Apartment.create(
            street: "Little Whinging", 
            city: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:state]).to_not be_empty
    end
    it "is not valid without manager" do
        aptTest = Apartment.create(
            street: "Little Whinging", 
            city: "Surrey", 
            state: "Mr. Potter", 
            email: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:manager]).to_not be_empty
    end
    it "is not valid without email" do
        aptTest = Apartment.create( 
            street: "Little Whinging", 
            city: "Surrey", state: "Mr. Potter", 
            manager: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:email]).to_not be_empty
    end
    it "is not valid without price" do
        aptTest = Apartment.create(
            street: "Main Street", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com", 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:price]).to_not be_empty
    end
    it "is not valid without bedrooms" do
        aptTest = Apartment.create(
            street: "Main Street", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com", 
            price: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:bedrooms]).to_not be_empty
    end
    it "is not valid without bathrooms" do
        aptTest = Apartment.create(
            street: "Main Street", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com", 
            price: 3, 
            bedrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg",
            user_id: 1)
        expect(aptTest.errors[:bathrooms]).to_not be_empty
    end
    it "is not valid without pets" do
        aptTest = Apartment.create(
            street: "Main Street", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com", 
            price: 3, 
            bedrooms: 2, 
            bathrooms: 2, 
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg", 
            user_id: 1)
        expect(aptTest.errors[:pets]).to_not be_empty
    end
    it "is not valid without image" do
        aptTest = Apartment.create(
            street: "Main Street", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com", 
            price: 3, 
            bedrooms: 2, 
            bathrooms: 2, 
            pets: "yes", 
            user_id: 1)
        expect(aptTest.errors[:image]).to_not be_empty
    end
    it "is not valid without user id" do
        aptTest = Apartment.create(
            street: "Main Stree", 
            city: "Little Whinging", 
            state: "Surrey", 
            manager: "Mr. Potter", 
            email: "potter@example.com",
            price: 2000, 
            bedrooms: 3, 
            bathrooms: 2, 
            pets: "yes",
            image: "https://c8.alamy.com/comp/B0RJGE/small-bungalow-home-with-pathway-in-addlestone-surrey-uk-B0RJGE.jpg")
        expect(aptTest.errors[:user_id]).to_not be_empty
    end
end
