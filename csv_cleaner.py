import pandas as pd

# Cargar el archivo CSV
df = pd.read_csv('C:/Users/David/Desktop/ADC_Final_Project/Dataset.csv')

# Mostrar las columnas para decidir cuáles eliminar
print(df.columns)

# Eliminar las columnas no deseadas (sustituye 'Columna1', 'Columna2' por los nombres reales de tus columnas)
columnas_a_eliminar = ['Occupation', 'Blood_Pressure','Heart_Rate','Daily_Steps']
df = df.drop(columns=columnas_a_eliminar)

# Guardar el archivo CSV modificado
df.to_csv('C:/Users/David/Desktop/ADC_Final_Project/Cleaned_Dataset.csv', index=False)
