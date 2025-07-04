# XAMPP MySQL Restore

## Prerequisites

* Windows machine with XAMPP installed.
* Ensure both Apache and MySQL services are **stopped** before running the script.
* The script must be Run as Administrator

## Download Files

* `solve-xampp.bat`

  * The batch script that automates the restore steps.

## Processes

1. **Stop Services**
   Open XAMPP Control Panel and click **Stop** for both **Apache** and **MySQL**, If on Apache and MySQL Services.

2. **Locate MySQL Directory**
   Go to xampp installation folder
   Then go to 'mysql' folder
   By default:

   ```
   C:\xampp\mysql\
   ```

3. **Copy the Script**
   Place `solve-xampp.bat` into the `mysql` folder.

4. **Run as Administrator**

   * Right-click `solve-xampp.bat`
   * Select **Run as administrator**
   * A console window will open and execute the steps.

5. **Confirm Completion**
   When you see **Restore complete!**, press any key to close the window.

6. **Cleanup**
   Delete `solve-xampp.bat` if no longer needed.

7. **Restart Services**
   In XAMPP Control Panel, click **Start** for **MySQL** and **Apache**.


## What the Script Does

* Renames `data` → `data_old`
* Creates a fresh `data` directory
* Copies everything from `backup\` → `data\` (skips `ibdata1`)
* Merges files from `data_old` → `data` without overwriting existing ones
* Deletes `data_old` once merging is complete


## Troubleshooting

* **Access Denied Errors**:

  * Verify Apache/MySQL are stopped.
  * Run the batch file as Administrator.

* **Missing Backup Files**:

  * Confirm `C:\xampp\mysql\backup\` exists and contains all necessary files (minus `ibdata1`).

* **Database Startup Errors**:

  * Manually copy a valid `ibdata1` from your archive into `C:\xampp\mysql\data`.

---


* **Author:** Dorjoy Das
* **Date:** 3 July 2025
