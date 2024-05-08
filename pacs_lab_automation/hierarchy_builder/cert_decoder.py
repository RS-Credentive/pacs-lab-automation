from cryptography import x509
from cryptography.x509.oid import ExtensionOID


class CertDecoder:
    def __init__(self, cert_bytes: bytes) -> None:
        # Try PEM first
        try:
            certificate = x509.load_pem_x509_certificate(cert_bytes)
        except Exception as e:
            # TODO - try DER - low priority since we use PEM for everything here.
            raise e
