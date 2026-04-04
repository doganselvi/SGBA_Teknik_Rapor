## 🧪 Canlı Demo

👉 [v4 Final Demo (Uçtan Uca Akış)](https://doganselvi.github.io/SGBA_Teknik_Rapor/sgba_gesture_demo_v4%20NEW.html)

👉 [v2 UI Mockup (Gelişmiş Arayüz)](https://doganselvi.github.io/SGBA_Teknik_Rapor/sgba_ui_mockup.html)

👉 [v2 Kayıt Sistemi (Gelişmiş Vektör)](https://doganselvi.github.io/SGBA_Teknik_Rapor/sgba_gesture_kayit_v2%20NEW.html)

👉 [Güvenlik Analizi](https://doganselvi.github.io/SGBA_Teknik_Rapor/sgba_guvenlik_analizi.html)

👉 [Kullanım Senaryoları](https://doganselvi.github.io/SGBA_Teknik_Rapor/sgba_kullanim_senaryolari.html)

# 🛡️ SGBA — Zero-Visual Trace Security Algorithm (v2.9)

SGBA (Zero-Visual Trace Security Algorithm), mobil cihazlarda gizli katmanlara erişimi **hiçbir görsel iz bırakmadan** sağlayan, gesture tabanlı ve davranış analizli yeni nesil bir güvenlik yaklaşımıdır.

---

## 🚀 Proje Vizyonu

Geleneksel güvenlik çözümleri (ör. gizli klasörler), her zaman bir **iz** bırakır:
- ikon
- kilit ekranı
- erişim ipuçları

SGBA ise bu izleri tamamen ortadan kaldırır.

> Cihaz dışarıdan bakıldığında tamamen normal görünür.  
> Sadece kullanıcıya özel bir gesture ile gizli katman tetiklenir.

---

## 🧠 Temel Yaklaşım

SGBA, kullanıcıya özel dokunma davranışını analiz eder ve doğrular:

- Zamanlama
- Hareket şekli
- Hız
- Basınç (genişletilebilir)

Bu sayede sistem:
- rastgele dokunuşları reddeder  
- sadece gerçek kullanıcıyı tanır  

---

## 🛠️ Teknik Özellikler

### 🔹 Algoritma
- **DTW (Dynamic Time Warping)** tabanlı gesture doğrulama
- Vektörleştirilmiş hareket karşılaştırma

### 🔹 AI & Optimizasyon
- NPU (Neural Processing Unit) üzerinde çalışacak şekilde tasarım
- Event-driven tetikleme (sadece gerekli anda aktif)
- Ultra düşük güç tüketimi

### 🔹 Güvenlik Katmanları
- Hız filtresi → kazara dokunuşları engeller  
- Proximity Sensor → cep içi tetiklemeyi önler  
- Feedback suppression → brute-force denemeleri zorlaştırır  

---

## 🧪 Güvenlik Analizi

SGBA aşağıdaki saldırı türlerine karşı test edilmiştir:

- ❌ Brute Force → geri bildirim yok → öğrenme engellenir  
- ❌ Shoulder Surfing → görsel iz yok → gözle takip edilemez  
- ❌ Accidental Trigger → sensör + hız filtresi ile engellenir  

---

## 🧩 Demo & Simülasyonlar

- `sgba_gesture_kayit.html`  
  → Gesture kayıt ve doğrulama süreci  

- `sgba_guvenlik_analizi.html`  
  → Saldırı simülasyonları  

- `sgba_kullanim_senaryolari.html`  
  → Gerçek kullanım senaryoları  

- `SGBA_Konsept_Demo_v2.9.pdf`  
  → Matematiksel ve sistem mimarisi  

---

## 🌍 Kullanım Alanları

- 📰 Gazetecilik & Aktivizm  
- 👨‍👩‍👧‍👦 Ebeveyn gizlilik ihtiyaçları  
- 🏢 Kurumsal BYOD politikaları  
- 🔐 Yüksek gizlilik gerektiren bireysel kullanım  

---

## 🔮 Gelecek Geliştirmeler

- Gerçek cihaz entegrasyonu (Android / One UI)
- Sensör verisi genişletme (gyroscope, pressure)
- AI model iyileştirmeleri
- Performans ölçümleri

---

## 👨‍💻 Geliştirici

Bu proje, Ankara'da teknik eğitimine devam eden,  
Elektrik-Elektronik Mühendisliği hedefi olan bir 11. sınıf ATP öğrencisi tarafından geliştirilmiştir.

---

## 📌 Not

Bu proje bir **konsept ve prototip çalışmasıdır**.  
Amaç, mevcut mobil güvenlik yaklaşımlarına alternatif bir model sunmaktır.
