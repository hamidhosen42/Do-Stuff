# ✅ Do Stuff App 📝

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
   git clone https://github.com/hamidhosen42/Do-Stuff.git

2. Open Do Stuff.xcodeproj in Xcode

3. Run on Simulator or device

## 🚀 Folder Structure

```
Do Stuff/
├── 📁 AppImage/                          # App screenshots & logo
│   ├── logo/                            # (Logo folder)
│   ├── Add New Item screen.png
│   ├── Empty Todo List screen.png
│   ├── Launch Screen with Checkmark.png
│   ├── List with Checked Tasks.png
│   ├── Swipe to Delete.png
│   └── Todo List (in edit mode).png

├── 📁 Assets.xcassets/
│   ├── AppIcon.appiconset/
│   └── LaunchImage.imageset/           # Optional if using image-based launch

├── 📁 Models/
│   └── ItemModel.swift                 # Data structure for each todo item

├── 📁 ViewModels/
│   └── ListViewModel.swift             # Manages list actions and item updates

├── 📁 Views/
│   ├── ListView.swift                  # Main list screen
│   ├── AddView.swift                   # View to add tasks
│   ├── ListRowView.swift               # Each list item row
│   └── LaunchScreen.storyboard         # Optional (used if not using SwiftUI launch screen)

├── Info.plist                          # App settings, permissions, and launch config
├── Do StuffApp.swift                   # App entry point with NavigationView
├── README.md                           # GitHub project description
└── ItunesArtwork@2x.png                # Optional marketing icon

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
