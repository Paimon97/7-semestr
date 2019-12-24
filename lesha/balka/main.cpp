#include <iostream>
#include <vector>

using namespace std;



int main()
{

}

// Класс балка содержит характеристики балки необходимые для расчета
class Beam
{
public:

    Beam()
    {
        length = 2;
        HH = 1;
        BB = 2;
        KK = 1;
//        nfe = 8;
    };

    // Блок Set-ов. Задаем значения
    void SetInitalParametrs(int length,int nfe,int HH,int BB,int KK)
    {
        this->length = length;
        this->HH = HH;
        this->BB = BB;
        this->KK = KK;
        this->nfe = nfe;
    }

    // апроксимированный параболой прогиб
    vector<double> GetDeflectionLine(float Y)
    {
        double b = Y/(0.25*this->nfe);
        double a = - Y/0.25;
        for (int i =0; i < this->nfe; i++)
        {
            this->YY[i]= a*(i^2) + b*i;
        }
        return YY;
    }



private:
    int length;
    int HH;
    int BB;
    int KK;
    vector<double> YY;
//    vector<double> XX;
//    int EE;
    int nfe;
};


class Calculator{
public:


private:
};

// fc = (f(x + h) - f(x - h)) / (2 * h);
//f2 = (f(x + h) - 2 * f(x) + f(x - h)) / (h * h);
//    // вычисляем интеграл по формуле центральных прямугольников

//      Integral = 0.0;
//      for(i = 1; i <= n; i++)
//            Integral = Integral + h * f(a + h * (i - 0.5));
//      cout << "I1 = " << Integral << "\n";
