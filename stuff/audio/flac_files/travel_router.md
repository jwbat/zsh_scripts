a **travel router** lets you create a **local Wi-Fi network** without requiring any internet connection.  
This gives your **phone running the BluOS app** a way to connect to the **Node Nano**, even when you're fully offline.

---

## 🧳 What is a Travel Router?

A travel router is a small device that:

* Creates a **private Wi-Fi network** (with or without internet)
* Allows multiple devices to communicate over that network
* Often powered by USB, making it great for compact setups

Popular models:

* **TP-Link TL-WR902AC** (widely recommended)
* GL.iNet **GL-MT1300 ("Beryl")** — more advanced but still easy to use

---

## 🎛 How You’d Use It in Your Setup

### 🔧 Physical Setup:

```
[Node Nano] → (Ethernet cable) → [Travel Router]
[USB drive] → (plugged into) → [Node Nano]
[Phone/Tablet] → (connects via Wi-Fi) → [Travel Router]
```

### ✅ What this gives you:

* A **self-contained local network**
* Your phone can now **see and control the Node Nano** via the **BluOS app**
* You don’t need internet or cloud anything — this is **purely local control**

---

## 🔁 Network Modes

Set the router to **Access Point (AP)** or **Router mode with no WAN/internet**:

* **Router Mode** (typical default): Creates a Wi-Fi network like "MyAudioRig"

  * The Node gets a local IP (e.g., 192.168.1.100)
  * Your phone gets another (e.g., 192.168.1.101)
* No need to connect the WAN port or configure DNS
* **DHCP and discovery still work**, so BluOS can find the Node

---

## 📱 Step-by-Step Summary:

1. **Plug in the travel router** (to USB power)
2. **Connect the Node Nano’s Ethernet port** to the travel router via Ethernet
3. **Connect your phone/tablet** to the router’s Wi-Fi network
4. **Open the BluOS app**
5. The app will automatically discover the Node
6. **Insert a USB drive** with FLACs into the Node
7. Control and browse playback from your phone — all offline

---

## 💡 Optional Bonus:

You can also plug a laptop into the travel router (via Ethernet or Wi-Fi) if you want to:

* Share FLAC files via SMB/UPnP
* Do metadata management
* Remote-control the Node from a browser

---

Let me know if you want help configuring one of these routers — I can walk you through TP-Link or GL.iNet setup for **offline use only**.
