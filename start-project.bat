@echo off
start "" kill-mul-port.bat
start powershell -NoExit -Command "cd D:\projectDeveloper\frontend-ui\admin-client; code .; npm start"
start powershell -NoExit -Command "cd D:\projectDeveloper\frontend-ui\user-client; code .; npm start"
start powershell -NoExit -Command "cd D:\projectDeveloper\frontend-ui\owner-client; code .; npm start"

start powershell -NoExit -Command "cd D:\projectDeveloper\backend-service\auth-service; npm run dev" 
start powershell -NoExit -Command "cd D:\projectDeveloper\backend-service\book-service; npm run dev" 
start powershell -NoExit -Command "cd D:\projectDeveloper\backend-service\company-service; npm run dev" 
start powershell -NoExit -Command "cd D:\projectDeveloper\backend-service\notification-service; npm run dev" 
start powershell -NoExit -Command "cd D:\projectDeveloper\backend-service\product-service; npm run dev"
