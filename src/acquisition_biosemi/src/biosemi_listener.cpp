#include "ros/ros.h"
#include "acquisition_biosemi/biosemi_result.h"
#include <iostream>


static unsigned long int numero;

class Listener
{
public:
	void biosemiCallback(const acquisition_biosemi::biosemi_result msg);
	std::vector<double> data;
	std::vector<double>::iterator pt;
};

/* Cette fonction est appelée à chaque réception de message */
void Listener::biosemiCallback(const acquisition_biosemi::biosemi_result msg)
{
	int num, taille;

	taille = msg.valeurs.size();
	std::cout << "taille " << taille << std::endl ;
	std::cout << "nombre " << msg.nombre << std::endl;
	std::cout << "numero " << msg.numero << std::endl;

	std::vector<double>::const_iterator i = msg.valeurs.begin();
	for(num = 0; num < msg.nombre; num ++ ) {
		std::cout.setf(std::ios::fixed, std::ios::floatfield);
		std::cout.precision(12);
		std::cout.width(12); std::cout.fill('0');
		std::cout << msg.numero + num;
		std::cout.width(0); std::cout.fill(' ');
		std::cout << "[" << msg.frequence << "]:  ";
		for(int k = 0; k < taille / msg.nombre; k++) {
			std::cout << *i;
			data.push_back(*i);
			++i;
		}
		std::cout << "  " << msg.extra << std::endl;


		if (numero != 0) {
			if (msg.numero + num != numero + 1) {
				std::cerr << "Perte de synchronisation : numero = " << msg.numero << ", ancien = " << numero << std::endl;
				ros::shutdown();
			}
		}
		numero = msg.numero + num;
	}

}


void display(Listener& listener)
{
	std::cout << "NEWWWWW" << std::endl;
	for(std::vector<double>::iterator i=listener.data.begin();i!=listener.data.end();i++)
	{
		std::cout << *i << std::endl;
	}
	std::cout << "ENDDDD" << std::endl;
}

int main(int argc, char **argv)
{
  numero = 0;
	Listener listener;
	listener.pt=listener.data.begin();

  ros::init(argc, argv, "biosemi_listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("biosemi_result", 1000, &Listener::biosemiCallback,&listener);

  ros::spin();

	display(listener);

  return 0;
}
