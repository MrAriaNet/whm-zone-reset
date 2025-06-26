# WHM Zone Reset Script

This simple Bash script automatically resets the DNS zones of all domains listed in the `/etc/userdomains` file on a cPanel/WHM server using the `whmapi1` API.

## 🔧 How It Works

- The script extracts all domain names from `/etc/userdomains`.
- It loops through each domain and runs the `resetzone` WHM API call to reset its DNS zone.

## 📋 Requirements

- Root access to a cPanel/WHM server.
- The `whmapi1` command must be available (default in WHM).
- Perl (installed by default on most Linux systems).

## 📦 Usage

1. Download or clone the repository:

```bash
git clone https://github.com/MrAriaNet/whm-zone-reset.git
cd whm-zone-reset
````

2. Make the script executable:

```bash
chmod +x resetzones.sh
```

3. Run the script as root:

```bash
./resetzones.sh
```

## 📝 Notes

* This script resets **all** zones found in `/etc/userdomains`. Use with caution.
* If you'd like to filter domains (e.g., by user, extension, or pattern), you can modify the `perl` command accordingly.

## ⚠️ Warning

Resetting DNS zones will replace any custom DNS records. Make sure to back up your DNS zones before running this script.

## 📄 License

This project is released under the MIT License. Feel free to use and modify it.
