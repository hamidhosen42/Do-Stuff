# ✅ Todo List App 📝

A simple and clean productivity app built with **SwiftUI + MVVM**, allowing users to easily manage their daily tasks.

---

## ✨ Features

- 📋 Add, Edit, and Delete tasks
- ✅ Mark tasks as completed
- 🔁 Reorder tasks by drag-and-drop
- 🎨 Launch screen with animation/logo
- 🌙 Dark mode supported
- 🧠 MVVM architecture (Model - View - ViewModel)

---

## 🧱 Tech Stack

- SwiftUI
- MVVM architecture
- Xcode 15+
- iOS 15+

---

## 📸 Screenshots

| Description | Preview |
|------------|---------|
| **Launch Screen** | <img src="./AppImage/Launch%20Screen%20with%20Checkmark.png" width="250"/> |
| **Empty List** | <img src="./AppImage/Empty%20Todo%20List%20screen.png" width="250"/> |
| **Add Task** | <img src="./AppImage/Add%20New%20Item%20screen.png" width="250"/> |
| **Task List (Edit Mode)** | <img src="./AppImage/Todo%20List%20(in%20edit%20mode).png" width="250"/> |
| **Swipe to Delete** | <img src="./AppImage/Swipe%20to%20Delete.png" width="250"/> |
| **Tasks Marked Complete** | <img src="./AppImage/List%20with%20Checked%20Tasks.png" width="250"/> |

---

## 🚀 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/hamidhosen42/ToDo-App.git

2. Open TodoList.xcodeproj in Xcode

3. Run on Simulator or device

## 🚀 Folder Structure

```
TodoList/
├── 📁 Assets.xcassets/
│   ├── AppIcon.appiconset/
│   └── LaunchImage.imageset/         # Optional if using custom launch logo
│
├── 📁 Models/
│   └── ItemModel.swift               # Data structure for each todo item
│
├── 📁 ViewModels/
│   └── ListViewModel.swift           # Handles logic for todo list actions
│
├── 📁 Views/
│   ├── ListView.swift                # Main screen showing the todo list
│   ├── AddView.swift                 # View to add a new item
│   ├── ListRowView.swift             # View for each individual item row
│   └── LaunchScreen.storyboard       # (Optional) Launch screen if using storyboard
│
├── 📁 Screenshots/
│   ├── launch_screen.png
│   ├── screenshot_empty_list.png
│   ├── screenshot_add_item.png
│   ├── screenshot_edit_mode.png
│   ├── screenshot_delete_item.png
│   ├── screenshot_checked_items.png
│
├── Info.plist                        # App settings and launch screen config
├── TodoListApp.swift                 # App entry point (@main)
├── README.md                         # Project description and usage guide
└── ItunesArtwork@2x.png              # App Store-style icon (optional)
```


📄 License
- MIT License – feel free to use, modify, and share!


---

### ✅ Final Steps

- Add your images to a folder in your repo called `Screenshots/`
- Paste the `README.md` content above into your GitHub project root
- Rename your image files to match the filenames listed above
- Push everything to GitHub

Would you like me to generate the `Screenshots/` folder structure or include icons for App Store style?