const stripesecretkey = "sk_test_51MrgvLGPITKsRzWNIm1skBil4XLaaKACZUH3APF9eZm8OkVY6yIQZTPIDHEdAfE7zZ2vhKu5tSxfCunHUFma1cuL00JGEeECnc"
const stripepublickey = "pk_test_51MrgvLGPITKsRzWNNJrPhxOG1MEhKTbZ7EuOpK0cu4CAHQ5aCuY8V6AsLjBJKd5XCmsB655Xdu6IZSr4EhlCP7D4005hohlAIz"
const Stripe = require('stripe');
const stripe = Stripe(stripesecretkey);

const stripePayment = (req,res)=>{
    console.log("Stripe Payment");
    console.log(req.body);
    console.log("success");
    stripe.customers.create({
        email: req.body.stripeEmail,
        source: req.body.stripeToken,
        name: 'Yilkal Derseh',
        address: {
            line1: 'kebele 01  Debre Elias',
            postal_code: '1101920',
        city: 'Debre Elias',
        state: 'Amhara',
        country: 'Ethiopia',
    }
})
.then((customer) => {

    return stripe.charges.create({
        amount: 300000,     // Charging Rs 25
        description: 'For Renting Purpose',
        currency: 'etb',
        customer: customer.id
    },function(err, ress){
        console.log(ress);

    });
} )
}

module.exports = { stripePayment }