<!-- Create a new file: admin-dashboard.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reva Chalets - Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <script>
        // Check if user is logged in
        if (!localStorage.getItem('isAdmin')) {
            window.location.href = 'admin.html';
        }
    </script>
</head>
<body class="bg-gray-50 min-h-screen">
    <!-- Sidebar -->
    <div class="flex">
        <div class="w-64 bg-white min-h-screen border-r border-gray-200">
            <div class="p-6">
                <div class="flex items-center space-x-3 mb-8">
                    <div class="w-10 h-10 bg-gradient-to-br from-amber-500 to-orange-600 rounded-lg flex items-center justify-center">
                        <i class="fas fa-home text-white"></i>
                    </div>
                    <span class="text-xl font-bold text-gray-900">Reva Admin</span>
                </div>
                
                <nav class="space-y-2">
                    <a href="#" class="flex items-center space-x-3 px-4 py-3 bg-amber-100 text-amber-800 rounded-lg font-medium">
                        <i class="fas fa-chart-bar"></i>
                        <span>Dashboard</span>
                    </a>
                    <a href="#chalets" class="flex items-center space-x-3 px-4 py-3 text-gray-700 hover:bg-gray-100 rounded-lg">
                        <i class="fas fa-building"></i>
                        <span>Manage Chalets</span>
                    </a>
                    <a href="#bookings" class="flex items-center space-x-3 px-4 py-3 text-gray-700 hover:bg-gray-100 rounded-lg">
                        <i class="fas fa-calendar"></i>
                        <span>Bookings</span>
                    </a>
                    <a href="#messages" class="flex items-center space-x-3 px-4 py-3 text-gray-700 hover:bg-gray-100 rounded-lg">
                        <i class="fas fa-envelope"></i>
                        <span>Messages</span>
                    </a>
                    <a href="#settings" class="flex items-center space-x-3 px-4 py-3 text-gray-700 hover:bg-gray-100 rounded-lg">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                </nav>
                
                <div class="absolute bottom-6 left-6 right-6">
                    <button 
                        onclick="logout()"
                        class="w-full bg-gray-100 hover:bg-gray-200 text-gray-800 py-3 rounded-lg font-medium transition-colors"
                    >
                        <i class="fas fa-sign-out-alt mr-2"></i>
                        Logout
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="flex-1 p-8">
            <div class="flex justify-between items-center mb-8">
                <h1 class="text-3xl font-bold text-gray-900">Admin Dashboard</h1>
                <div class="flex items-center space-x-4">
                    <div class="text-right">
                        <div class="font-medium">Admin User</div>
                        <div class="text-sm text-gray-600">Last login: Today</div>
                    </div>
                    <div class="w-10 h-10 bg-gradient-to-br from-amber-500 to-orange-600 rounded-full flex items-center justify-center">
                        <i class="fas fa-user text-white"></i>
                    </div>
                </div>
            </div>
            
            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-amber-100 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-building text-amber-600"></i>
                        </div>
                        <div>
                            <div class="text-2xl font-bold text-gray-900">12</div>
                            <div class="text-gray-600">Total Chalets</div>
                        </div>
                    </div>
                </div>
                
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-calendar text-blue-600"></i>
                        </div>
                        <div>
                            <div class="text-2xl font-bold text-gray-900">24</div>
                            <div class="text-gray-600">Active Bookings</div>
                        </div>
                    </div>
                </div>
                
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-comments text-green-600"></i>
                        </div>
                        <div>
                            <div class="text-2xl font-bold text-gray-900">15</div>
                            <div class="text-gray-600">New Messages</div>
                        </div>
                    </div>
                </div>
                
                <div class="bg-white p-6 rounded-xl shadow-lg">
                    <div class="flex items-center">
                        <div class="w-12 h-12 bg-purple-100 rounded-lg flex items-center justify-center mr-4">
                            <i class="fas fa-star text-purple-600"></i>
                        </div>
                        <div>
                            <div class="text-2xl font-bold text-gray-900">4.9</div>
                            <div class="text-gray-600">Average Rating</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Recent Bookings -->
            <div class="bg-white p-6 rounded-xl shadow-lg mb-8">
                <h2 class="text-xl font-bold text-gray-900 mb-4">Recent Booking Requests</h2>
                <div class="overflow-x-auto">
                    <table class="w-full">
                        <thead>
                            <tr class="border-b border-gray-200">
                                <th class="text-left py-3 px-4 font-medium text-gray-700">Customer</th>
                                <th class="text-left py-3 px-4 font-medium text-gray-700">Chalet</th>
                                <th class="text-left py-3 px-4 font-medium text-gray-700">Dates</th>
                                <th class="text-left py-3 px-4 font-medium text-gray-700">Status</th>
                                <th class="text-left py-3 px-4 font-medium text-gray-700">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="border-b border-gray-100">
                                <td class="py-4 px-4">Sarah Mitchell</td>
                                <td class="py-4 px-4">Petra Heritage</td>
                                <td class="py-4 px-4">May 15-20, 2024</td>
                                <td class="py-4 px-4"><span class="bg-amber-100 text-amber-800 px-2 py-1 rounded-full text-sm">Pending</span></td>
                                <td class="py-4 px-4">
                                    <button class="bg-amber-600 text-white px-3 py-1 rounded text-sm hover:bg-amber-700">Review</button>
                                </td>
                            </tr>
                            <tr class="border-b border-gray-100">
                                <td class="py-4 px-4">James Peterson</td>
                                <td class="py-4 px-4">Dead Sea Retreat</td>
                                <td class="py-4 px-4">Jun 10-15, 2024</td>
                                <td class="py-4 px-4"><span class="bg-green-100 text-green-800 px-2 py-1 rounded-full text-sm">Confirmed</span></td>
                                <td class="py-4 px-4">
                                    <button class="bg-gray-600 text-white px-3 py-1 rounded text-sm hover:bg-gray-700">View</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Recent Messages -->
            <div class="bg-white p-6 rounded-xl shadow-lg">
                <h2 class="text-xl font-bold text-gray-900 mb-4">Recent Messages</h2>
                <div class="space-y-4">
                    <div class="border border-gray-200 rounded-lg p-4">
                        <div class="flex justify-between items-start mb-2">
                            <div class="font-medium">Anna Rodriguez</div>
                            <div class="text-sm text-gray-500">2 hours ago</div>
                        </div>
                        <p class="text-gray-700 text-sm">Hello, I'm interested in booking the Wadi Rum Lodge for my family of 4. Could you provide information about availability for July?</p>
                        <div class="mt-3">
                            <button class="bg-amber-600 text-white px-3 py-1 rounded text-sm hover:bg-amber-700">Reply</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function logout() {
            localStorage.removeItem('isAdmin');
            window.location.href = 'admin.html';
        }
    </script>
</body>
</html>
