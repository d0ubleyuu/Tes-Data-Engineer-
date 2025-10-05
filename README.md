# Tes-Data-Engineer-

## 📊 Dataset
Dataset terdiri dari beberapa fitur pelanggan, antara lain:
- `recency_days`: hari sejak transaksi terakhir  
- `transaction_count`: jumlah transaksi  
- `total_revenue`: total pendapatan dari pelanggan  
- `avg_time_between_transactions_days`: rata-rata jeda antar transaksi  
- `unique_products_count`: jumlah produk unik yang dibeli  
- `total_quantity`: jumlah barang yang dibeli  
- `most_frequent_category`: kategori produk paling sering dibeli  
- `join_date` & `duration_since_joining_days`: lama bergabung  
- `customer_location`: lokasi pelanggan  
- `churn`: target (1 = churn, 0 = tidak churn)  

## ⚙️ Model
- **Random Forest Classifier**

## 🚀 Cara Menjalankan Proyek di Google Colab
1. Buka file notebook (`.ipynb`) di Google Colab.  
2. Pastikan semua library sudah terinstal (scikit-learn, pandas, numpy, matplotlib, seaborn).  
   - Jika belum, jalankan:  
     ```python
     !pip install scikit-learn pandas numpy matplotlib seaborn
     ```
3. Upload dataset ke Colab atau hubungkan dengan Google Drive.  
4. Jalankan notebook dari atas ke bawah.  

## 📈 Hasil
- Model dievaluasi menggunakan metrik: **Accuracy, Precision, Recall, F1-score, dan ROC AUC Score**.  
- Random Forest memberikan performa debgan akurasinya mencapai 100%
