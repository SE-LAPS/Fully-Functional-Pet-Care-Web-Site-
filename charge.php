<?php
// Set your secret Stripe API key
$stripeSecretKey = 'sk_test_51OFUGGCg6bpRm8zlsOY046CbpTtDJmEgeFz2KAcmW0sVfmRnK67ZlalvfHnyaFHgMU0EcTO1k0y34SZpJQ6wONj400uuXge3VN';

// Include the Stripe PHP library
require_once 'vendor/autoload.php';

\Stripe\Stripe::setApiKey($stripeSecretKey);

// Get the token, amount, and customer name from the AJAX request
$token = $_POST['token'];
$amount = $_POST['amount'];
$customerName = $_POST['customerName'];

// Create a charge
try {
    $charge = \Stripe\Charge::create(array(
        'amount' => $amount * 100,  // Amount in cents
        'currency' => 'usd',
        'source' => $token,
        'description' => 'Payment by ' . $customerName,
    ));

    // Charge successful, send a success response to the client
    echo json_encode(array('success' => true, 'charge' => $charge));
} catch (\Stripe\Exception\CardException $e) {
    // Charge failed, send an error response to the client
    echo json_encode(array('success' => false, 'error' => $e->getMessage()));
} catch (\Exception $e) {
    // Something else went wrong, send an error response to the client
    echo json_encode(array('success' => false, 'error' => 'An error occurred.'));
}
?>
