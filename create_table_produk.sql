CREATE TABLE produk (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    stock INT DEFAULT 0 CHECK (stock >= 0),
    harga INT CHECK (harga > 0),
    kategori_id INT REFERENCES kategori(id)
)

