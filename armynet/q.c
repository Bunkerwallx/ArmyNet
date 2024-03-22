#include <QApplication>
#include <QWidget>
#include <QVBoxLayout>
#include <QPushButton>
#include <QLineEdit>
#include <QLabel>

class MainWindow : public QWidget {
  Q_OBJECT
public:
  MainWindow() {
    // Diseño de la interfaz
    QVBoxLayout *layout = new QVBoxLayout(this);
    
    // Etiqueta para el archivo de entrada
    QLabel *labelInput = new QLabel("Archivo de entrada:");
    layout->addWidget(labelInput);
    
    // Línea de edición para el archivo de entrada
    QLineEdit *lineEditInput = new QLineEdit();
    layout->addWidget(lineEditInput);
    
    // Etiqueta para el archivo de salida
    QLabel *labelOutput = new QLabel("Archivo de salida:");
    layout->addWidget(labelOutput);
    
    // Línea de edición para el archivo de salida
    QLineEdit *lineEditOutput = new QLineEdit();
    layout->addWidget(lineEditOutput);
    
    // Etiqueta para la contraseña
    QLabel *labelPassword = new QLabel("Contraseña:");
    layout->addWidget(labelPassword);
    
    // Línea de edición para la contraseña
    QLineEdit *lineEditPassword = new QLineEdit();
    lineEditPassword->setEchoMode(QLineEdit::Password);
    layout->addWidget(lineEditPassword);
    
    // Botón para iniciar el cifrado
    QPushButton *buttonEncrypt = new QPushButton("Cifrar");
    layout->addWidget(buttonEncrypt);
    
    // Conectar el botón al código
    connect(buttonEncrypt, &QPushButton::clicked, [this, lineEditInput, lineEditOutput, lineEditPassword]() {
      // Obtener los valores de los campos
      std::string inputFile = lineEditInput->text().toStdString();
      std::string outputFile = lineEditOutput->text().toStdString();
      std::string password = lineEditPassword->text().toStdString();
      
      // Cifrar el archivo
      // ...
    });
  }
};

int main(int argc, char *argv[]) {
  QApplication app(argc, argv);
  
  MainWindow window;
  window.show();
  
  return app.exec();
}
