#include <exception>
#include <iostream>

int main()
{
    try
    {
        throw std::runtime_error("potato");
    }
    catch (std::exception& e)
    {
        std::cerr << "caught " << e.what() << std::endl;
    }
    return 0;
}
