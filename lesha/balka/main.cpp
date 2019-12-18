#include <iostream>
#include <array>

using namespace std;


int main()
{

//    cout << "Hello World!" << endl;
//    return 0;
}

// Класс балка содержит характеристики балки необходимые для расчета
class Beam
{
public:

    Beam()
    {
        length = 2;
        square = 1;
        EE = 2;
        nfe = 8;
    };

    // Блок Set-ов. Задаем значения
    void SetLength(int length){
        this->length = length;
    }

    void SetSquare(float square){
        this->square = square;
    }

    void SetEE(int EE){
        this->EE = EE;
    }
    // тут поидие должен быть массив из 1 и -1, но чет у меня какие-то траблы с матрицами
    void SetRigidMatrix( int RigidMatrix){
        this->RigidMatrix = RigidMatrix;
    }

    //Блок Get-ов. Получение значений
    int GetKe(){
        return (RigidMatrix*EE*square*length)/nfe;
    }



private:
    int length;
    float square;
    int EE;
    int nfe;
    int RigidMatrix;
//    float Ke;
};

// Класс с обработкой результатов ампроксимация и численное интегрирование
class ProcessingResults
{
public:


    // Задание начального набора значений
    double getData(int n)
    {
      double **f;
      f = new double*[2];
      f[0] = new double[n];
      f[1] = new double[n];
      for (int i = 0; i<n; i++) {
        f[0][i] = (double)i;
        f[1][i] = 8 * (double)i - 3;
        // Добавление случайной составляющей
        f[1][i] = 8*(double)i - 3 + ((rand()%100)-50)*0.05;
      }
//      return f;
    }

    // Вычисление коэффициентов аппроксимирующей прямой
    void getApprox(double **x, double *a, double *b, int n)
    {
        double sumx = 0;
        double sumy = 0;
        double sumx2 = 0;
        double sumxy = 0;
        for (int i = 0; i<n; i++) {
            sumx += x[0][i];
            sumy += x[1][i];
            sumx2 += x[0][i] * x[0][i];
            sumxy += x[0][i] * x[1][i];
        }
        *a = (n*sumxy - (sumx*sumy)) / (n*sumx2 - sumx*sumx);
        *b = (sumy - *a*sumx) / n;
        return;
    }

    double f(double x) {
      return (10 - x);
    }

    double simpson_integral(double f, double a, double b, int n) {
      const double h = (b-a)/n;
      double k1 = 0, k2 = 0;
      for(int i = 1; i < n; i += 2) {
        k1 += this->f(a + i*h);
        k2 += this->f(a + (i+1)*h);
      }
      return h/3*(this->f(a) + 4*k1 + 2*k2);
    }

private:

};
