install.packages("tidyverse", type="source")
install.packages("kableExtra")


# Cargar las liberías para el análisis:
library(tidyverse)
library(readxl)


# Cargar el fichero y crear el dataframe:
marketing_data_paises <- read_excel("marketing_data_paises.xlsx", 
                                          col_types = c("skip", "numeric", "numeric", 
                                                        "text", "text", "text", "numeric", 
                                                        "numeric", "text", "numeric", "numeric", 
                                                        "text"))

# Crear un dataframe para que los cambios no afecten al original:
mark_data<-marketing_data_paises

#Primera opción, ver una tabla con la información de las variables:
head(mark_data)

# Segunda opción, ver una tabla con información de las variables en html. En este caso se utiliza la librería "knitr" para documentos RMarkdown y Quarto (esta librería las utilizarán los estudiantes que tengan más conocimientos de RStudio y  estén creando un documento en html):
library(knitr)
kable(head(mark_data))



#Cambiar los nombres a las variables de las columnas:
colnames(mark_data)<-c("ID","YoB", "Education", "Marital Status", "Income", "Kids at Home", "Teens at Home", "DT Customer", "Recency", "Complain", "Country")

# Primera opción, resumen de la información:
summary(mark_data)

# Segunda opción, librería resumen de información. skim()es una alternativa a summary(), pero con información más detallada:
library(skimr)
skim(mark_data)

#Corrección de errores. Eliminamos el dólar con parse_number. Una vez eliminado, es irreversible. La variable se convierte en numérica y se guarda en el dataframe. Ya trabajaremos con ella, como numérica.
mark_data$Income <- parse_number(mark_data$Income)

#Ajuste a los tipos de variables:

#La variable Dt_Customer la convertimos en date:
# En el ejercicio viene esta variable, pero hay que usar backticks para el espacio
#mark_data$Dt_Customer <- as.Date(mark_data$Dt_Customer)
mark_data$`DT Customer` <- as.Date(mark_data$`DT Customer`)
#En algunos casos es conveniente convertir variables a factor para analizar o visualizar datos categóricos. La decisión depende del tipo de análisis o modelo que se quiera realizar y de cómo se quiera representar los datos.

#La variable Education, se podría convertir en factor :
mark_data$Education <- as.factor(mark_data$Education)

#La variable kidhome se podría convertir a factor:
#Si Kidhome representa categorías o niveles, como por ejemplo "sin hijos en casa", "con un hijo en casa" o "con dos hijos en casa", entonces puede ser útil convertirla a factor para utilizar las herramientas de análisis de datos adecuadas. Sin embargo, si Kidhome es una variable numérica que representa una cantidad o una magnitud, como por ejemplo "número de hijos en casa", entonces no es necesario convertirla a factor.

# Ejemplo de cómo se convertiría a factor:
#mark_data$Kidhome <- as.factor(mark_data$Kidhome)

#Para ver la nueva estructura de variables:
skim(mark_data)


# Calcular gasto medio en función del nivel educativo:
#aggregate(Income ~ Education, data = mark_data, FUN = mean, na.rm = TRUE)

# Calcular el gasto medio en función del nivel educativo (en este caso lo que se hace es transformarlo a html):
library(kableExtra)
agg_data <- aggregate(Income ~ Education, data = mark_data, FUN = mean, na.rm = TRUE)
kable(agg_data) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

# Cálculo de Kidhome
kidhome_agg_data <- aggregate(Income ~ `Kids at Home`, data = mark_data, FUN = mean, na.rm = TRUE)
kable(kidhome_agg_data) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

