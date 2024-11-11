// Array para almacenar los productos de la lista de deseos
let wishlist = [];

// Función para agregar productos a la lista de deseos
function addToWishlist(productName) {
    if (!wishlist.includes(productName)) {
        wishlist.push(productName);
        alert(productName + " ha sido añadido a tu lista de deseos.");
    } else {
        alert(productName + " ya está en tu lista de deseos.");
    }
    console.log("Lista de deseos:", wishlist);
}